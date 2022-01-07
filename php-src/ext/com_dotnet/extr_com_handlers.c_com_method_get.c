
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_17__ ;
typedef struct TYPE_19__ TYPE_15__ ;


typedef int zval ;
typedef int zend_type ;
struct TYPE_23__ {int len; int val; } ;
typedef TYPE_3__ zend_string ;
typedef int zend_object ;
struct TYPE_24__ {int num_args; int function_name; TYPE_15__* arg_info; int handler; int fn_flags; int scope; int type; } ;
typedef TYPE_4__ zend_internal_function ;
typedef int zend_function ;
typedef int zend_bool ;
typedef int zend_arg_info ;
struct TYPE_25__ {int * method_cache; int code_page; scalar_t__ typeinfo; int ce; int v; } ;
typedef TYPE_5__ php_com_dotnet_object ;
typedef int f ;
typedef int ULONG ;
struct TYPE_26__ {int * lptcomp; int lpvardesc; TYPE_17__* lpfuncdesc; } ;
struct TYPE_21__ {int wParamFlags; } ;
struct TYPE_22__ {TYPE_1__ paramdesc; } ;
struct TYPE_20__ {int cParams; TYPE_2__* lprgelemdescParam; } ;
struct TYPE_19__ {int type; } ;
typedef int OLECHAR ;
typedef int ITypeInfo ;
typedef int ITypeComp ;
typedef int DISPID ;
typedef int DESCKIND ;
typedef TYPE_6__ BINDPTR ;


 int ALLOC_HASHTABLE (int *) ;




 scalar_t__ FAILED (int ) ;
 int INVOKE_FUNC ;
 int ITypeComp_Bind (int *,int *,int ,int ,int **,int*,TYPE_6__*) ;
 int ITypeComp_Release (int *) ;
 int ITypeInfo_GetTypeComp (scalar_t__,int **) ;
 int ITypeInfo_Release (int *) ;
 int ITypeInfo_ReleaseFuncDesc (int *,TYPE_17__*) ;
 int ITypeInfo_ReleaseVarDesc (int *,int ) ;
 int LHashValOfNameSys (int ,int ,int *) ;
 int LOCALE_SYSTEM_DEFAULT ;
 int PARAMFLAG_FOUT ;
 int PHP_FN (int ) ;
 scalar_t__ SUCCEEDED (int ) ;
 int SYS_WIN32 ;
 scalar_t__ VT_DISPATCH ;
 scalar_t__ V_VT (int *) ;
 int ZEND_ACC_CALL_VIA_HANDLER ;
 int ZEND_INTERNAL_FUNCTION ;
 int ZEND_TYPE_INIT_NONE (int ) ;
 int _ZEND_ARG_INFO_FLAGS (int,int ) ;
 int com_method_handler ;
 TYPE_15__* ecalloc (int,int) ;
 int efree (int *) ;
 int * emalloc (int) ;
 int function_dtor ;
 int memcpy (int *,TYPE_4__*,int) ;
 int memset (TYPE_4__*,int ,int) ;
 int php_com_get_id_of_name (TYPE_5__*,int ,int ,int *) ;
 int * php_com_string_to_olestring (int ,int ,int ) ;
 TYPE_4__* zend_hash_find_ptr (int *,TYPE_3__*) ;
 int zend_hash_init (int *,int,int *,int ,int ) ;
 int zend_hash_update_mem (int *,TYPE_3__*,TYPE_4__*,int) ;
 int zend_set_function_arg_flags (int *) ;
 int zend_string_addref (int ) ;
 int zend_string_copy (TYPE_3__*) ;

__attribute__((used)) static zend_function *com_method_get(zend_object **object_ptr, zend_string *name, const zval *key)
{
 zend_internal_function f, *fptr = ((void*)0);
 zend_function *func;
 DISPID dummy;
 php_com_dotnet_object *obj = (php_com_dotnet_object*)*object_ptr;

 if (V_VT(&obj->v) != VT_DISPATCH) {
  return ((void*)0);
 }

 if (FAILED(php_com_get_id_of_name(obj, name->val, name->len, &dummy))) {
  return ((void*)0);
 }


 if (obj->method_cache == ((void*)0) || ((void*)0) == (fptr = zend_hash_find_ptr(obj->method_cache, name))) {
  memset(&f, 0, sizeof(zend_internal_function));
  f.type = ZEND_INTERNAL_FUNCTION;
  f.num_args = 0;
  f.arg_info = ((void*)0);
  f.scope = obj->ce;
  f.fn_flags = ZEND_ACC_CALL_VIA_HANDLER;
  f.function_name = zend_string_copy(name);
  f.handler = PHP_FN(com_method_handler);

  fptr = &f;

  if (obj->typeinfo) {

   ITypeComp *comp;
   ITypeInfo *TI = ((void*)0);
   DESCKIND kind;
   BINDPTR bindptr;
   OLECHAR *olename;
   ULONG lhash;
   int i;

   if (SUCCEEDED(ITypeInfo_GetTypeComp(obj->typeinfo, &comp))) {
    olename = php_com_string_to_olestring(name->val, name->len, obj->code_page);
    lhash = LHashValOfNameSys(SYS_WIN32, LOCALE_SYSTEM_DEFAULT, olename);

    if (SUCCEEDED(ITypeComp_Bind(comp, olename, lhash, INVOKE_FUNC, &TI, &kind, &bindptr))) {
     switch (kind) {
      case 131:
       f.arg_info = ecalloc(bindptr.lpfuncdesc->cParams, sizeof(zend_arg_info));

       for (i = 0; i < bindptr.lpfuncdesc->cParams; i++) {
        zend_bool by_ref = (bindptr.lpfuncdesc->lprgelemdescParam[i].paramdesc.wParamFlags & PARAMFLAG_FOUT) != 0;
        f.arg_info[i].type = (zend_type) ZEND_TYPE_INIT_NONE(_ZEND_ARG_INFO_FLAGS(by_ref, 0));
       }

       f.num_args = bindptr.lpfuncdesc->cParams;

       ITypeInfo_ReleaseFuncDesc(TI, bindptr.lpfuncdesc);
       break;



      case 128:
       ITypeInfo_ReleaseVarDesc(TI, bindptr.lpvardesc);
       break;
      case 129:
       ITypeComp_Release(bindptr.lptcomp);
       break;

      case 130:
       break;
     }
     if (TI) {
      ITypeInfo_Release(TI);
     }
    }
    ITypeComp_Release(comp);
    efree(olename);
   }
  }

  zend_set_function_arg_flags((zend_function*)&f);

  if (!obj->method_cache) {
   ALLOC_HASHTABLE(obj->method_cache);
   zend_hash_init(obj->method_cache, 2, ((void*)0), function_dtor, 0);
  }

  zend_hash_update_mem(obj->method_cache, name, &f, sizeof(f));
 }

 if (fptr) {


  zend_string_addref(fptr->function_name);
  func = emalloc(sizeof(*fptr));
  memcpy(func, fptr, sizeof(*fptr));

  return func;
 }

 return ((void*)0);
}
