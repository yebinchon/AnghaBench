
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_3__ {int value; int ce; } ;
typedef TYPE_1__ zend_class_constant ;
typedef int smart_str ;


 scalar_t__ IS_ARRAY ;
 int ZSTR_VAL (int *) ;
 int Z_ACCESS_FLAGS (int ) ;
 scalar_t__ Z_TYPE (int ) ;
 int smart_str_append_printf (int *,char*,char*,char*,char const*,char*,...) ;
 int zend_tmp_string_release (int *) ;
 char* zend_visibility_string (int ) ;
 char* zend_zval_type_name (int *) ;
 int * zval_get_tmp_string (int *,int **) ;
 int zval_update_constant_ex (int *,int ) ;

__attribute__((used)) static void _class_const_string(smart_str *str, char *name, zend_class_constant *c, char *indent)
{
 char *visibility = zend_visibility_string(Z_ACCESS_FLAGS(c->value));
 const char *type;

 zval_update_constant_ex(&c->value, c->ce);
 type = zend_zval_type_name(&c->value);

 if (Z_TYPE(c->value) == IS_ARRAY) {
  smart_str_append_printf(str, "%sConstant [ %s %s %s ] { Array }\n",
      indent, visibility, type, name);
 } else {
  zend_string *tmp_value_str;
  zend_string *value_str = zval_get_tmp_string(&c->value, &tmp_value_str);

  smart_str_append_printf(str, "%sConstant [ %s %s %s ] { %s }\n",
      indent, visibility, type, name, ZSTR_VAL(value_str));

  zend_tmp_string_release(tmp_value_str);
 }
}
