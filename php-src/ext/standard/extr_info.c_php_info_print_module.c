
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_5__ {int name; scalar_t__ version; int (* info_func ) (TYPE_1__*) ;} ;
typedef TYPE_1__ zend_module_entry ;
struct TYPE_6__ {int phpinfo_as_text; } ;


 int DISPLAY_INI_ENTRIES () ;
 int ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int efree (int *) ;
 int php_info_print_table_end () ;
 int php_info_print_table_header (int,int ) ;
 int php_info_print_table_row (int,char*,scalar_t__) ;
 int php_info_print_table_start () ;
 int php_info_printf (char*,int ,...) ;
 int php_strtolower (int ,int ) ;
 int * php_url_encode (int ,int ) ;
 TYPE_3__ sapi_module ;
 int strlen (int ) ;
 int stub1 (TYPE_1__*) ;

void php_info_print_module(zend_module_entry *zend_module)
{
 if (zend_module->info_func || zend_module->version) {
  if (!sapi_module.phpinfo_as_text) {
   zend_string *url_name = php_url_encode(zend_module->name, strlen(zend_module->name));

   php_strtolower(ZSTR_VAL(url_name), ZSTR_LEN(url_name));
   php_info_printf("<h2><a name=\"module_%s\">%s</a></h2>\n", ZSTR_VAL(url_name), zend_module->name);

   efree(url_name);
  } else {
   php_info_print_table_start();
   php_info_print_table_header(1, zend_module->name);
   php_info_print_table_end();
  }
  if (zend_module->info_func) {
   zend_module->info_func(zend_module);
  } else {
   php_info_print_table_start();
   php_info_print_table_row(2, "Version", zend_module->version);
   php_info_print_table_end();
   DISPLAY_INI_ENTRIES();
  }
 } else {
  if (!sapi_module.phpinfo_as_text) {
   php_info_printf("<tr><td class=\"v\">%s</td></tr>\n", zend_module->name);
  } else {
   php_info_printf("%s\n", zend_module->name);
  }
 }
}
