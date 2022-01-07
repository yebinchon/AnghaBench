
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
struct TYPE_4__ {int type; int name; } ;
typedef TYPE_1__ zend_property_info ;


 TYPE_1__* Z_PTR_P (int *) ;
 int free (TYPE_1__*) ;
 int zend_string_release_ex (int ,int) ;
 int zend_type_release (int ,int) ;

__attribute__((used)) static void zend_destroy_property_info_internal(zval *zv)
{
 zend_property_info *property_info = Z_PTR_P(zv);

 zend_string_release_ex(property_info->name, 1);
 zend_type_release(property_info->type, 1);
 free(property_info);
}
