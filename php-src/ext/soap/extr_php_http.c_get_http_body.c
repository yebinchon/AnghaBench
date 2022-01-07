
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* val; int len; } ;
typedef TYPE_1__ zend_string ;
typedef scalar_t__ ssize_t ;
typedef int php_stream ;
typedef int headerbuf ;


 char FALSE ;
 int INT_MAX ;
 char TRUE ;
 TYPE_1__* ZSTR_EMPTY_ALLOC () ;
 int atoi (char*) ;
 int efree (char*) ;
 char* get_http_header_value (char*,char*) ;
 int php_stream_eof (int *) ;
 char php_stream_getc (int *) ;
 int php_stream_gets (int *,char*,int) ;
 scalar_t__ php_stream_read (int *,char*,int) ;
 scalar_t__ sscanf (char*,char*,int*) ;
 int strncasecmp (char*,char*,int) ;
 TYPE_1__* zend_string_alloc (int,int ) ;
 TYPE_1__* zend_string_realloc (TYPE_1__*,int,int ) ;
 int zend_string_release_ex (TYPE_1__*,int ) ;

__attribute__((used)) static zend_string* get_http_body(php_stream *stream, int close, char *headers)
{
 zend_string *http_buf = ((void*)0);
 char *header;
 int header_close = close, header_chunked = 0, header_length = 0, http_buf_size = 0;

 if (!close) {
  header = get_http_header_value(headers, "Connection: ");
  if (header) {
   if(!strncasecmp(header, "close", sizeof("close")-1)) header_close = 1;
   efree(header);
  }
 }
 header = get_http_header_value(headers, "Transfer-Encoding: ");
 if (header) {
  if(!strncasecmp(header, "chunked", sizeof("chunked")-1)) header_chunked = 1;
  efree(header);
 }
 header = get_http_header_value(headers, "Content-Length: ");
 if (header) {
  header_length = atoi(header);
  efree(header);
  if (!header_length && !header_chunked) {

   return ZSTR_EMPTY_ALLOC();
  }
 }

 if (header_chunked) {
  char ch, done, headerbuf[8192];

  done = FALSE;

  while (!done) {
   int buf_size = 0;

   php_stream_gets(stream, headerbuf, sizeof(headerbuf));
   if (sscanf(headerbuf, "%x", &buf_size) > 0 ) {
    if (buf_size > 0) {
     size_t len_size = 0;

     if (http_buf_size + buf_size + 1 < 0) {
      if (http_buf) {
       zend_string_release_ex(http_buf, 0);
      }
      return ((void*)0);
     }

     if (http_buf) {
      http_buf = zend_string_realloc(http_buf, http_buf_size + buf_size, 0);
     } else {
      http_buf = zend_string_alloc(buf_size, 0);
     }

     while (len_size < buf_size) {
      ssize_t len_read = php_stream_read(stream, http_buf->val + http_buf_size, buf_size - len_size);
      if (len_read <= 0) {

       done = TRUE;
        break;
      }
      len_size += len_read;
       http_buf_size += len_read;
      }


     ch = php_stream_getc(stream);
     if (ch == '\r') {
      ch = php_stream_getc(stream);
     }
     if (ch != '\n') {

      if (http_buf) {
       zend_string_release_ex(http_buf, 0);
      }
      return ((void*)0);
     }
     }
   } else {

    if (http_buf) {
     zend_string_release_ex(http_buf, 0);
    }
    return ((void*)0);
   }
   if (buf_size == 0) {
    done = TRUE;
   }
  }


  while (1) {
   if (!php_stream_gets(stream, headerbuf, sizeof(headerbuf))) {
    break;
   }

   if ((headerbuf[0] == '\r' && headerbuf[1] == '\n') ||
       (headerbuf[0] == '\n')) {

    break;
   }
  }

  if (http_buf == ((void*)0)) {
   return ZSTR_EMPTY_ALLOC();
  }

 } else if (header_length) {
  if (header_length < 0 || header_length >= INT_MAX) {
   return ((void*)0);
  }
  http_buf = zend_string_alloc(header_length, 0);
  while (http_buf_size < header_length) {
   ssize_t len_read = php_stream_read(stream, http_buf->val + http_buf_size, header_length - http_buf_size);
   if (len_read <= 0) {
    break;
   }
   http_buf_size += len_read;
  }
 } else if (header_close) {
  do {
   ssize_t len_read;
   if (http_buf) {
    http_buf = zend_string_realloc(http_buf, http_buf_size + 4096, 0);
   } else {
    http_buf = zend_string_alloc(4096, 0);
   }
   len_read = php_stream_read(stream, http_buf->val + http_buf_size, 4096);
   if (len_read > 0) {
    http_buf_size += len_read;
   }
  } while(!php_stream_eof(stream));
 } else {
  return ((void*)0);
 }

 http_buf->val[http_buf_size] = '\0';
 http_buf->len = http_buf_size;
 return http_buf;
}
