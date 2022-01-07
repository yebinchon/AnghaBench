
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * handlers; } ;
typedef TYPE_1__ zend_object ;
typedef int zend_class_entry ;
struct TYPE_7__ {TYPE_1__ std; } ;
typedef TYPE_2__ pdo_row_t ;


 TYPE_2__* ecalloc (int,int) ;
 int pdo_row_object_handlers ;
 int zend_object_std_init (TYPE_1__*,int *) ;

zend_object *pdo_row_new(zend_class_entry *ce)
{
 pdo_row_t *row = ecalloc(1, sizeof(pdo_row_t));
 zend_object_std_init(&row->std, ce);
 row->std.handlers = &pdo_row_object_handlers;

 return &row->std;
}
