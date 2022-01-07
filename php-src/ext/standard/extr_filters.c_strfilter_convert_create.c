
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int uint8_t ;
typedef int php_stream_filter ;
typedef int php_convert_filter ;


 int E_WARNING ;
 scalar_t__ IS_ARRAY ;
 int PHP_CONV_BASE64_DECODE ;
 int PHP_CONV_BASE64_ENCODE ;
 int PHP_CONV_QPRINT_DECODE ;
 int PHP_CONV_QPRINT_ENCODE ;
 scalar_t__ SUCCESS ;
 int * Z_ARRVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int pefree (int *,int ) ;
 int * pemalloc (int,int ) ;
 scalar_t__ php_convert_filter_ctor (int *,int,int *,char const*,int ) ;
 int php_error_docref (int *,int ,char*,char const*) ;
 int * php_stream_filter_alloc (int *,int *,int ) ;
 scalar_t__ strcasecmp (char*,char*) ;
 char* strchr (char const*,char) ;
 int strfilter_convert_ops ;

__attribute__((used)) static php_stream_filter *strfilter_convert_create(const char *filtername, zval *filterparams, uint8_t persistent)
{
 php_convert_filter *inst;
 php_stream_filter *retval = ((void*)0);

 char *dot;
 int conv_mode = 0;

 if (filterparams != ((void*)0) && Z_TYPE_P(filterparams) != IS_ARRAY) {
  php_error_docref(((void*)0), E_WARNING, "stream filter (%s): invalid filter parameter", filtername);
  return ((void*)0);
 }

 if ((dot = strchr(filtername, '.')) == ((void*)0)) {
  return ((void*)0);
 }
 ++dot;

 inst = pemalloc(sizeof(php_convert_filter), persistent);

 if (strcasecmp(dot, "base64-encode") == 0) {
  conv_mode = PHP_CONV_BASE64_ENCODE;
 } else if (strcasecmp(dot, "base64-decode") == 0) {
  conv_mode = PHP_CONV_BASE64_DECODE;
 } else if (strcasecmp(dot, "quoted-printable-encode") == 0) {
  conv_mode = PHP_CONV_QPRINT_ENCODE;
 } else if (strcasecmp(dot, "quoted-printable-decode") == 0) {
  conv_mode = PHP_CONV_QPRINT_DECODE;
 }

 if (php_convert_filter_ctor(inst, conv_mode,
  (filterparams != ((void*)0) ? Z_ARRVAL_P(filterparams) : ((void*)0)),
  filtername, persistent) != SUCCESS) {
  goto out;
 }

 retval = php_stream_filter_alloc(&strfilter_convert_ops, inst, persistent);
out:
 if (retval == ((void*)0)) {
  pefree(inst, persistent);
 }

 return retval;
}
