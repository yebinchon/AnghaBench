
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_object ;
typedef int zend_class_entry ;
struct TYPE_6__ {int * handlers; } ;
struct TYPE_5__ {int * typeinfo; TYPE_2__ zo; int * ce; int code_page; int v; } ;
typedef TYPE_1__ php_com_dotnet_object ;


 int CP_ACP ;
 int VariantInit (int *) ;
 TYPE_1__* emalloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int php_com_initialize () ;
 int php_com_object_handlers ;
 int zend_object_std_init (TYPE_2__*,int *) ;

zend_object* php_com_object_new(zend_class_entry *ce)
{
 php_com_dotnet_object *obj;

 php_com_initialize();
 obj = emalloc(sizeof(*obj));
 memset(obj, 0, sizeof(*obj));

 VariantInit(&obj->v);
 obj->code_page = CP_ACP;
 obj->ce = ce;

 zend_object_std_init(&obj->zo, ce);
 obj->zo.handlers = &php_com_object_handlers;

 obj->typeinfo = ((void*)0);

 return (zend_object*)obj;
}
