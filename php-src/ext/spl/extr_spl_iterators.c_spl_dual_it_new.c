
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * handlers; } ;
typedef TYPE_1__ zend_object ;
typedef int zend_class_entry ;
struct TYPE_8__ {TYPE_1__ std; int dit_type; } ;
typedef TYPE_2__ spl_dual_it_object ;


 int DIT_Unknown ;
 int object_properties_init (TYPE_1__*,int *) ;
 int spl_handlers_dual_it ;
 TYPE_2__* zend_object_alloc (int,int *) ;
 int zend_object_std_init (TYPE_1__*,int *) ;

__attribute__((used)) static zend_object *spl_dual_it_new(zend_class_entry *class_type)
{
 spl_dual_it_object *intern;

 intern = zend_object_alloc(sizeof(spl_dual_it_object), class_type);
 intern->dit_type = DIT_Unknown;

 zend_object_std_init(&intern->std, class_type);
 object_properties_init(&intern->std, class_type);

 intern->std.handlers = &spl_handlers_dual_it;
 return &intern->std;
}
