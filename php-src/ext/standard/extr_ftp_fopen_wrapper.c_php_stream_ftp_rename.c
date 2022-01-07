
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int port; int * path; int * host; int * scheme; } ;
typedef TYPE_1__ php_url ;
typedef int php_stream_wrapper ;
typedef int php_stream_context ;
typedef int php_stream ;


 int E_WARNING ;
 int GET_FTP_RESULT (int *) ;
 int REPORT_ERRORS ;
 char* ZSTR_VAL (int *) ;
 int php_error_docref (int *,int ,char*,char*) ;
 int * php_ftp_fopen_connect (int *,char const*,char*,int ,int *,int *,int *,int *,int *,int *) ;
 int php_stream_close (int *) ;
 int php_stream_printf (int *,char*,char*) ;
 int php_url_free (TYPE_1__*) ;
 TYPE_1__* php_url_parse (char const*) ;
 int zend_string_equals (int *,int *) ;

__attribute__((used)) static int php_stream_ftp_rename(php_stream_wrapper *wrapper, const char *url_from, const char *url_to, int options, php_stream_context *context)
{
 php_stream *stream = ((void*)0);
 php_url *resource_from = ((void*)0), *resource_to = ((void*)0);
 int result;
 char tmp_line[512];

 resource_from = php_url_parse(url_from);
 resource_to = php_url_parse(url_to);



 if (!resource_from ||
  !resource_to ||
  !resource_from->scheme ||
  !resource_to->scheme ||
  !zend_string_equals(resource_from->scheme, resource_to->scheme) ||
  !resource_from->host ||
  !resource_to->host ||
  !zend_string_equals(resource_from->host, resource_to->host) ||
  (resource_from->port != resource_to->port &&
   resource_from->port * resource_to->port != 0 &&
   resource_from->port + resource_to->port != 21) ||
  !resource_from->path ||
  !resource_to->path) {
  goto rename_errexit;
 }

 stream = php_ftp_fopen_connect(wrapper, url_from, "r", 0, ((void*)0), context, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
 if (!stream) {
  if (options & REPORT_ERRORS) {
   php_error_docref(((void*)0), E_WARNING, "Unable to connect to %s", ZSTR_VAL(resource_from->host));
  }
  goto rename_errexit;
 }


 php_stream_printf(stream, "RNFR %s\r\n", (resource_from->path != ((void*)0) ? ZSTR_VAL(resource_from->path) : "/"));

 result = GET_FTP_RESULT(stream);
 if (result < 300 || result > 399) {
  if (options & REPORT_ERRORS) {
   php_error_docref(((void*)0), E_WARNING, "Error Renaming file: %s", tmp_line);
  }
  goto rename_errexit;
 }


 php_stream_printf(stream, "RNTO %s\r\n", (resource_to->path != ((void*)0) ? ZSTR_VAL(resource_to->path) : "/"));

 result = GET_FTP_RESULT(stream);
 if (result < 200 || result > 299) {
  if (options & REPORT_ERRORS) {
   php_error_docref(((void*)0), E_WARNING, "Error Renaming file: %s", tmp_line);
  }
  goto rename_errexit;
 }

 php_url_free(resource_from);
 php_url_free(resource_to);
 php_stream_close(stream);
 return 1;

rename_errexit:
 if (resource_from) {
  php_url_free(resource_from);
 }
 if (resource_to) {
  php_url_free(resource_to);
 }
 if (stream) {
  php_stream_close(stream);
 }
 return 0;
}
