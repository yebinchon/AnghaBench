
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_3__ {int name; } ;
typedef TYPE_1__ zend_class_entry ;


 int ZSTR_LEN (int ) ;
 int ZSTR_VAL (int ) ;
 int * zend_mangle_property_name (int ,int ,char*,int,int ) ;

zend_string * spl_gen_private_prop_name(zend_class_entry *ce, char *prop_name, int prop_len)
{
 return zend_mangle_property_name(ZSTR_VAL(ce->name), ZSTR_LEN(ce->name), prop_name, prop_len, 0);
}
