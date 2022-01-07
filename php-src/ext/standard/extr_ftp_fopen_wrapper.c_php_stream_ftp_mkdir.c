
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * path; } ;
typedef TYPE_1__ php_url ;
typedef int php_stream_wrapper ;
typedef int php_stream_context ;
typedef int php_stream ;


 int E_WARNING ;
 int GET_FTP_RESULT (int *) ;
 int PHP_STREAM_MKDIR_RECURSIVE ;
 int REPORT_ERRORS ;
 int ZSTR_LEN (int *) ;
 char* ZSTR_VAL (int *) ;
 int efree (char*) ;
 char* estrndup (char*,int) ;
 int php_error_docref (int *,int ,char*,char const*) ;
 int * php_ftp_fopen_connect (int *,char const*,char*,int ,int *,int *,int *,TYPE_1__**,int *,int *) ;
 int php_stream_close (int *) ;
 int php_stream_printf (int *,char*,char*) ;
 int php_url_free (TYPE_1__*) ;
 scalar_t__ strlen (char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int php_stream_ftp_mkdir(php_stream_wrapper *wrapper, const char *url, int mode, int options, php_stream_context *context)
{
 php_stream *stream = ((void*)0);
 php_url *resource = ((void*)0);
 int result, recursive = options & PHP_STREAM_MKDIR_RECURSIVE;
 char tmp_line[512];

 stream = php_ftp_fopen_connect(wrapper, url, "r", 0, ((void*)0), context, ((void*)0), &resource, ((void*)0), ((void*)0));
 if (!stream) {
  if (options & REPORT_ERRORS) {
   php_error_docref(((void*)0), E_WARNING, "Unable to connect to %s", url);
  }
  goto mkdir_errexit;
 }

 if (resource->path == ((void*)0)) {
  if (options & REPORT_ERRORS) {
   php_error_docref(((void*)0), E_WARNING, "Invalid path provided in %s", url);
  }
  goto mkdir_errexit;
 }

 if (!recursive) {
  php_stream_printf(stream, "MKD %s\r\n", ZSTR_VAL(resource->path));
  result = GET_FTP_RESULT(stream);
    } else {

        char *p, *e, *buf;

        buf = estrndup(ZSTR_VAL(resource->path), ZSTR_LEN(resource->path));
        e = buf + ZSTR_LEN(resource->path);


        while ((p = strrchr(buf, '/'))) {
   *p = '\0';
   php_stream_printf(stream, "CWD %s\r\n", strlen(buf) ? buf : "/");
   result = GET_FTP_RESULT(stream);
   if (result >= 200 && result <= 299) {
    *p = '/';
    break;
   }
  }

  php_stream_printf(stream, "MKD %s\r\n", strlen(buf) ? buf : "/");
  result = GET_FTP_RESULT(stream);

  if (result >= 200 && result <= 299) {
   if (!p) {
    p = buf;
   }

   while (p != e) {
    if (*p == '\0' && *(p + 1) != '\0') {
     *p = '/';
     php_stream_printf(stream, "MKD %s\r\n", buf);
     result = GET_FTP_RESULT(stream);
     if (result < 200 || result > 299) {
      if (options & REPORT_ERRORS) {
       php_error_docref(((void*)0), E_WARNING, "%s", tmp_line);
      }
      break;
     }
    }
    ++p;
   }
  }

  efree(buf);
    }

 php_url_free(resource);
 php_stream_close(stream);

 if (result < 200 || result > 299) {

  return 0;
 }

 return 1;

mkdir_errexit:
 if (resource) {
  php_url_free(resource);
 }
 if (stream) {
  php_stream_close(stream);
 }
 return 0;
}
