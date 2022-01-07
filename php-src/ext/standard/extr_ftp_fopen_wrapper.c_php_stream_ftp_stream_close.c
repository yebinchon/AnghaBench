
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int php_stream_wrapper ;
struct TYPE_6__ {struct TYPE_6__* wrapperthis; int mode; } ;
typedef TYPE_1__ php_stream ;


 int EOF ;
 int E_WARNING ;
 int GET_FTP_RESULT (TYPE_1__*) ;
 int php_error_docref (int *,int ,char*,int,char*) ;
 int php_stream_close (TYPE_1__*) ;
 int php_stream_write_string (TYPE_1__*,char*) ;
 scalar_t__ strpbrk (int ,char*) ;

__attribute__((used)) static int php_stream_ftp_stream_close(php_stream_wrapper *wrapper, php_stream *stream)
{
 php_stream *controlstream = stream->wrapperthis;
 int ret = 0;

 if (controlstream) {
  if (strpbrk(stream->mode, "wa+")) {
   char tmp_line[512];
   int result;


   result = GET_FTP_RESULT(controlstream);
   if (result != 226 && result != 250) {
    php_error_docref(((void*)0), E_WARNING, "FTP server error %d:%s", result, tmp_line);
    ret = EOF;
   }
  }

  php_stream_write_string(controlstream, "QUIT\r\n");
  php_stream_close(controlstream);
  stream->wrapperthis = ((void*)0);
 }

 return ret;
}
