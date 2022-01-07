
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ (* readfn_t ) (void*,unsigned long,char*) ;
typedef int GETS_DATA ;


 int E_WARNING ;
 int GETS_FETCH_SIZE ;
 scalar_t__ IMAPG (int ) ;
 int free (char*) ;
 int gets_stream ;
 char* pemalloc (unsigned long,int) ;
 int php_error_docref (int *,int ,char*) ;
 unsigned long php_stream_write (scalar_t__,char*,unsigned long) ;

__attribute__((used)) static char *php_mail_gets(readfn_t f, void *stream, unsigned long size, GETS_DATA *md)
{



 if (IMAPG(gets_stream)) {
  char buf[GETS_FETCH_SIZE];

  while (size) {
   unsigned long read;

   if (size > GETS_FETCH_SIZE) {
    read = GETS_FETCH_SIZE;
    size -=GETS_FETCH_SIZE;
   } else {
    read = size;
    size = 0;
   }

   if (!f(stream, read, buf)) {
    php_error_docref(((void*)0), E_WARNING, "Failed to read from socket");
    break;
   } else if (read != php_stream_write(IMAPG(gets_stream), buf, read)) {
    php_error_docref(((void*)0), E_WARNING, "Failed to write to stream");
    break;
   }
  }
  return ((void*)0);
 } else {
  char *buf = pemalloc(size + 1, 1);

  if (f(stream, size, buf)) {
   buf[size] = '\0';
  } else {
   php_error_docref(((void*)0), E_WARNING, "Failed to read from socket");
   free(buf);
   buf = ((void*)0);
  }
  return buf;
 }
}
