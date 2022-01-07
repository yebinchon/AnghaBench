
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_4__ {scalar_t__ typeinfo; int v; } ;
typedef TYPE_1__ php_com_dotnet_object ;


 int ITypeInfo_AddRef (scalar_t__) ;
 int VariantCopyInd (int *,int *) ;
 int VariantInit (int *) ;
 scalar_t__ emalloc (int) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;

zend_object* php_com_object_clone(zend_object *object)
{
 php_com_dotnet_object *cloneobj, *origobject;

 origobject = (php_com_dotnet_object*) object;
 cloneobj = (php_com_dotnet_object*)emalloc(sizeof(php_com_dotnet_object));

 memcpy(cloneobj, origobject, sizeof(*cloneobj));




 VariantInit(&cloneobj->v);


 VariantCopyInd(&cloneobj->v, &origobject->v);

 if (cloneobj->typeinfo) {
  ITypeInfo_AddRef(cloneobj->typeinfo);
 }

 return (zend_object*)cloneobj;
}
