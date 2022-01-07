
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * handlers; } ;
typedef TYPE_1__ zend_object ;
struct TYPE_7__ {TYPE_1__ std; int * type; } ;
typedef TYPE_2__ zend_ffi_ctype ;
typedef int zend_class_entry ;


 TYPE_2__* emalloc (int) ;
 int zend_ffi_ctype_handlers ;
 int zend_ffi_object_init (TYPE_1__*,int *) ;

__attribute__((used)) static zend_object *zend_ffi_ctype_new(zend_class_entry *class_type)
{
 zend_ffi_ctype *ctype;

 ctype = emalloc(sizeof(zend_ffi_ctype));

 zend_ffi_object_init(&ctype->std, class_type);
 ctype->std.handlers = &zend_ffi_ctype_handlers;

 ctype->type = ((void*)0);

 return &ctype->std;
}
