
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * handlers; } ;
struct TYPE_6__ {TYPE_2__ std; } ;
typedef TYPE_1__ zend_weakref ;
typedef TYPE_2__ zend_object ;
typedef int zend_class_entry ;


 int zend_ce_weakref ;
 TYPE_1__* zend_object_alloc (int,int ) ;
 int zend_object_std_init (TYPE_2__*,int ) ;
 int zend_weakref_handlers ;

__attribute__((used)) static zend_object* zend_weakref_new(zend_class_entry *ce) {
 zend_weakref *wr = zend_object_alloc(sizeof(zend_weakref), zend_ce_weakref);

 zend_object_std_init(&wr->std, zend_ce_weakref);

 wr->std.handlers = &zend_weakref_handlers;

 return &wr->std;
}
