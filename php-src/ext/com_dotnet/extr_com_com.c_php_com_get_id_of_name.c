
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {scalar_t__ id_of_name_cache; int v; int * typeinfo; int code_page; } ;
typedef TYPE_1__ php_com_dotnet_object ;
typedef int OLECHAR ;
typedef int HRESULT ;
typedef scalar_t__ DISPID ;


 int ALLOC_HASHTABLE (scalar_t__) ;
 scalar_t__ FAILED (int ) ;
 int IDispatch_GetIDsOfNames (int ,int *,int **,int,int ,scalar_t__*) ;
 int IID_NULL ;
 int ITypeInfo_GetIDsOfNames (int *,int **,int,scalar_t__*) ;
 int ITypeInfo_Release (int *) ;
 int LOCALE_SYSTEM_DEFAULT ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int V_DISPATCH (int *) ;
 int ZVAL_LONG (int *,scalar_t__) ;
 scalar_t__ Z_LVAL_P (int *) ;
 int efree (int *) ;
 int * php_com_string_to_olestring (char*,size_t,int ) ;
 size_t strlen (char*) ;
 int zend_hash_init (scalar_t__,int,int *,int *,int ) ;
 int * zend_hash_str_find (scalar_t__,char*,size_t) ;
 int zend_hash_str_update (scalar_t__,char*,size_t,int *) ;

HRESULT php_com_get_id_of_name(php_com_dotnet_object *obj, char *name,
  size_t namelen, DISPID *dispid)
{
 OLECHAR *olename;
 HRESULT hr;
 zval *tmp;

 if (namelen == -1) {
  namelen = strlen(name);
 }

 if (obj->id_of_name_cache && ((void*)0) != (tmp = zend_hash_str_find(obj->id_of_name_cache, name, namelen))) {
  *dispid = (DISPID)Z_LVAL_P(tmp);
  return S_OK;
 }

 olename = php_com_string_to_olestring(name, namelen, obj->code_page);

 if (obj->typeinfo) {
  hr = ITypeInfo_GetIDsOfNames(obj->typeinfo, &olename, 1, dispid);
  if (FAILED(hr)) {
   hr = IDispatch_GetIDsOfNames(V_DISPATCH(&obj->v), &IID_NULL, &olename, 1, LOCALE_SYSTEM_DEFAULT, dispid);
   if (SUCCEEDED(hr)) {

    ITypeInfo_Release(obj->typeinfo);
    obj->typeinfo = ((void*)0);
   }
  }
 } else {
  hr = IDispatch_GetIDsOfNames(V_DISPATCH(&obj->v), &IID_NULL, &olename, 1, LOCALE_SYSTEM_DEFAULT, dispid);
 }
 efree(olename);

 if (SUCCEEDED(hr)) {
  zval tmp;


  if (!obj->id_of_name_cache) {
   ALLOC_HASHTABLE(obj->id_of_name_cache);
   zend_hash_init(obj->id_of_name_cache, 2, ((void*)0), ((void*)0), 0);
  }
  ZVAL_LONG(&tmp, *dispid);
  zend_hash_str_update(obj->id_of_name_cache, name, namelen, &tmp);
 }

 return hr;
}
