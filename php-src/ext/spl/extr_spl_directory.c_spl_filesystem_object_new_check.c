
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * handlers; } ;
typedef TYPE_1__ zend_object ;
typedef int zend_class_entry ;
struct TYPE_6__ {TYPE_1__ std; } ;
typedef TYPE_2__ spl_filesystem_object ;


 TYPE_2__* spl_filesystem_from_obj (int ) ;
 int spl_filesystem_object_check_handlers ;
 int spl_filesystem_object_new_ex (int *) ;

__attribute__((used)) static zend_object *spl_filesystem_object_new_check(zend_class_entry *class_type)
{
 spl_filesystem_object *ret = spl_filesystem_from_obj(spl_filesystem_object_new_ex(class_type));
 ret->std.handlers = &spl_filesystem_object_check_handlers;
 return &ret->std;
}
