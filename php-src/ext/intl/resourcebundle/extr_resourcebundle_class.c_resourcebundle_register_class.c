
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int get_iterator; int create_object; } ;
typedef TYPE_1__ zend_class_entry ;
struct TYPE_7__ {int count_elements; int read_dimension; int free_obj; int * clone_obj; int offset; } ;


 int INIT_CLASS_ENTRY (TYPE_1__,char*,int ) ;
 int ResourceBundle_ce_ptr ;
 int ResourceBundle_class_functions ;
 int ResourceBundle_object ;
 int ResourceBundle_object_create ;
 int ResourceBundle_object_free ;
 TYPE_3__ ResourceBundle_object_handlers ;
 int XtOffsetOf (int ,int ) ;
 int resourcebundle_array_count ;
 int resourcebundle_array_get ;
 int resourcebundle_get_iterator ;
 TYPE_3__ std_object_handlers ;
 int zend ;
 int zend_ce_countable ;
 int zend_ce_traversable ;
 int zend_class_implements (int ,int,int ,int ) ;
 int zend_register_internal_class (TYPE_1__*) ;

void resourcebundle_register_class( void )
{
 zend_class_entry ce;

 INIT_CLASS_ENTRY( ce, "ResourceBundle", ResourceBundle_class_functions );

 ce.create_object = ResourceBundle_object_create;
 ce.get_iterator = resourcebundle_get_iterator;

 ResourceBundle_ce_ptr = zend_register_internal_class( &ce );

 ResourceBundle_object_handlers = std_object_handlers;
 ResourceBundle_object_handlers.offset = XtOffsetOf(ResourceBundle_object, zend);
 ResourceBundle_object_handlers.clone_obj = ((void*)0);
 ResourceBundle_object_handlers.free_obj = ResourceBundle_object_free;
 ResourceBundle_object_handlers.read_dimension = resourcebundle_array_get;
 ResourceBundle_object_handlers.count_elements = resourcebundle_array_count;

 zend_class_implements(ResourceBundle_ce_ptr, 2, zend_ce_traversable, zend_ce_countable);
}
