
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
 int REPORT_ERRORS ;
 int ZSTR_VAL (int *) ;
 int php_error_docref (int *,int ,char*,char const*) ;
 int * php_ftp_fopen_connect (int *,char const*,char*,int ,int *,int *,int *,TYPE_1__**,int *,int *) ;
 int php_stream_close (int *) ;
 int php_stream_printf (int *,char*,int ) ;
 int php_url_free (TYPE_1__*) ;

__attribute__((used)) static int php_stream_ftp_rmdir(php_stream_wrapper *wrapper, const char *url, int options, php_stream_context *context)
{
 php_stream *stream = ((void*)0);
 php_url *resource = ((void*)0);
 int result;
 char tmp_line[512];

 stream = php_ftp_fopen_connect(wrapper, url, "r", 0, ((void*)0), context, ((void*)0), &resource, ((void*)0), ((void*)0));
 if (!stream) {
  if (options & REPORT_ERRORS) {
   php_error_docref(((void*)0), E_WARNING, "Unable to connect to %s", url);
  }
  goto rmdir_errexit;
 }

 if (resource->path == ((void*)0)) {
  if (options & REPORT_ERRORS) {
   php_error_docref(((void*)0), E_WARNING, "Invalid path provided in %s", url);
  }
  goto rmdir_errexit;
 }

 php_stream_printf(stream, "RMD %s\r\n", ZSTR_VAL(resource->path));
 result = GET_FTP_RESULT(stream);

 if (result < 200 || result > 299) {
  if (options & REPORT_ERRORS) {
   php_error_docref(((void*)0), E_WARNING, "%s", tmp_line);
  }
  goto rmdir_errexit;
 }

 php_url_free(resource);
 php_stream_close(stream);

 return 1;

rmdir_errexit:
 if (resource) {
  php_url_free(resource);
 }
 if (stream) {
  php_stream_close(stream);
 }
 return 0;
}
