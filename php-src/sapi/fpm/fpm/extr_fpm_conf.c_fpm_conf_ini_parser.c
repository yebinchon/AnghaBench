
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;





 int ZLOG_ERROR ;
 int fpm_conf_ini_parser_array (int *,int *,int *,int*) ;
 int fpm_conf_ini_parser_entry (int *,int *,int*) ;
 int fpm_conf_ini_parser_section (int *,int*) ;
 int ini_filename ;
 int ini_lineno ;
 int zlog (int ,char*,int ,int ) ;

__attribute__((used)) static void fpm_conf_ini_parser(zval *arg1, zval *arg2, zval *arg3, int callback_type, void *arg)
{
 int *error;

 if (!arg1 || !arg) return;
 error = (int *)arg;
 if (*error) return;

 switch(callback_type) {
  case 130:
   fpm_conf_ini_parser_entry(arg1, arg2, error);
   break;
  case 128:
   fpm_conf_ini_parser_section(arg1, error);
   break;
  case 129:
   fpm_conf_ini_parser_array(arg1, arg3, arg2, error);
   break;
  default:
   zlog(ZLOG_ERROR, "[%s:%d] Unknown INI syntax", ini_filename, ini_lineno);
   *error = 1;
   break;
 }
}
