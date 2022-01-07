
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int php_stream ;


 int REPORT_ERRORS ;
 int php_stream_close (int *) ;
 char* php_stream_get_line (int *,char*,size_t,int *) ;
 int * php_stream_open_wrapper (char*,char*,int ,int *) ;

__attribute__((used)) static char *dsn_from_uri(char *uri, char *buf, size_t buflen)
{
 php_stream *stream;
 char *dsn = ((void*)0);

 stream = php_stream_open_wrapper(uri, "rb", REPORT_ERRORS, ((void*)0));
 if (stream) {
  dsn = php_stream_get_line(stream, buf, buflen, ((void*)0));
  php_stream_close(stream);
 }
 return dsn;
}
