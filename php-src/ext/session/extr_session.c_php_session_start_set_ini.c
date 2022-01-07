
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_7__ {int s; int member_0; } ;
typedef TYPE_1__ smart_str ;


 int PHP_INI_STAGE_RUNTIME ;
 int PHP_INI_USER ;
 int smart_str_0 (TYPE_1__*) ;
 int smart_str_append (TYPE_1__*,int *) ;
 int smart_str_appendc (TYPE_1__*,char) ;
 int smart_str_appends (TYPE_1__*,char*) ;
 int smart_str_free (TYPE_1__*) ;
 int zend_alter_ini_entry_ex (int ,int *,int ,int ,int ) ;

__attribute__((used)) static int php_session_start_set_ini(zend_string *varname, zend_string *new_value) {
 int ret;
 smart_str buf ={0};
 smart_str_appends(&buf, "session");
 smart_str_appendc(&buf, '.');
 smart_str_append(&buf, varname);
 smart_str_0(&buf);
 ret = zend_alter_ini_entry_ex(buf.s, new_value, PHP_INI_USER, PHP_INI_STAGE_RUNTIME, 0);
 smart_str_free(&buf);
 return ret;
}
