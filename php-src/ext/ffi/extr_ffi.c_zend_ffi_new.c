
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * handlers; } ;
typedef TYPE_1__ zend_object ;
struct TYPE_7__ {TYPE_1__ std; scalar_t__ persistent; int * tags; int * symbols; int * lib; } ;
typedef TYPE_2__ zend_ffi ;
typedef int zend_class_entry ;


 TYPE_2__* emalloc (int) ;
 int zend_ffi_handlers ;
 int zend_ffi_object_init (TYPE_1__*,int *) ;

__attribute__((used)) static zend_object *zend_ffi_new(zend_class_entry *class_type)
{
 zend_ffi *ffi;

 ffi = emalloc(sizeof(zend_ffi));

 zend_ffi_object_init(&ffi->std, class_type);
 ffi->std.handlers = &zend_ffi_handlers;

 ffi->lib = ((void*)0);
 ffi->symbols = ((void*)0);
 ffi->tags = ((void*)0);
 ffi->persistent = 0;

 return &ffi->std;
}
