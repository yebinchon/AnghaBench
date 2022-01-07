
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * handlers; } ;
typedef TYPE_1__ zend_object ;
typedef int zend_class_entry ;
struct TYPE_8__ {TYPE_1__ zo; } ;
typedef TYPE_2__ php_sqlite3_result ;


 int object_properties_init (TYPE_1__*,int *) ;
 int sqlite3_result_object_handlers ;
 TYPE_2__* zend_object_alloc (int,int *) ;
 int zend_object_std_init (TYPE_1__*,int *) ;

__attribute__((used)) static zend_object *php_sqlite3_result_object_new(zend_class_entry *class_type)
{
 php_sqlite3_result *intern;


 intern = zend_object_alloc(sizeof(php_sqlite3_result), class_type);

 zend_object_std_init(&intern->zo, class_type);
 object_properties_init(&intern->zo, class_type);

 intern->zo.handlers = &sqlite3_result_object_handlers;

 return &intern->zo;
}
