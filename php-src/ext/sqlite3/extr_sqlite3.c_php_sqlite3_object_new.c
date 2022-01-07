
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * handlers; } ;
typedef TYPE_1__ zend_object ;
typedef int zend_class_entry ;
typedef int php_sqlite3_free_list ;
struct TYPE_8__ {TYPE_1__ zo; int free_list; } ;
typedef TYPE_2__ php_sqlite3_db_object ;
typedef int llist_dtor_func_t ;


 int object_properties_init (TYPE_1__*,int *) ;
 scalar_t__ php_sqlite3_free_list_dtor ;
 int sqlite3_object_handlers ;
 int zend_llist_init (int *,int,int ,int ) ;
 TYPE_2__* zend_object_alloc (int,int *) ;
 int zend_object_std_init (TYPE_1__*,int *) ;

__attribute__((used)) static zend_object *php_sqlite3_object_new(zend_class_entry *class_type)
{
 php_sqlite3_db_object *intern;


 intern = zend_object_alloc(sizeof(php_sqlite3_db_object), class_type);


 zend_llist_init(&(intern->free_list), sizeof(php_sqlite3_free_list *), (llist_dtor_func_t)php_sqlite3_free_list_dtor, 0);

 zend_object_std_init(&intern->zo, class_type);
 object_properties_init(&intern->zo, class_type);

 intern->zo.handlers = &sqlite3_object_handlers;

 return &intern->zo;
}
