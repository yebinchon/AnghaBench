
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int v; int * typeinfo; } ;
typedef TYPE_1__ php_com_dotnet_object ;
struct TYPE_7__ {int cImplTypes; } ;
typedef TYPE_2__ TYPEATTR ;
typedef int OLECHAR ;
typedef int MEMBERID ;
typedef int ITypeLib ;
typedef int ITypeInfo ;
typedef int IProvideClassInfo2 ;
typedef int IProvideClassInfo ;
typedef int HREFTYPE ;
typedef int GUID ;
typedef int CLSID ;


 int CLSIDFromProgID (int *,int *) ;
 int CP_ACP ;
 int CP_THREAD_ACP ;
 int E_WARNING ;
 scalar_t__ FAILED (int ) ;
 int GUIDKIND_DEFAULT_SOURCE_DISP_IID ;
 int IDispatch_GetTypeInfo (int ,int ,int ,int **) ;
 int IDispatch_QueryInterface (int ,int *,void**) ;
 int IID_IProvideClassInfo ;
 int IID_IProvideClassInfo2 ;
 int IMPLTYPEFLAG_FDEFAULT ;
 int IMPLTYPEFLAG_FSOURCE ;
 int IProvideClassInfo2_GetGUID (int *,int ,int *) ;
 int IProvideClassInfo2_Release (int *) ;
 int IProvideClassInfo_Release (int *) ;
 int ITypeInfo_AddRef (int *) ;
 int ITypeInfo_GetContainingTypeLib (int *,int **,unsigned int*) ;
 int ITypeInfo_GetImplTypeFlags (int *,int,int*) ;
 int ITypeInfo_GetRefTypeInfo (int *,int ,int **) ;
 int ITypeInfo_GetRefTypeOfImplType (int *,int,int *) ;
 int ITypeInfo_GetTypeAttr (int *,TYPE_2__**) ;
 int ITypeInfo_Release (int *) ;
 int ITypeInfo_ReleaseTypeAttr (int *,TYPE_2__*) ;
 int ITypeLib_FindName (int *,int *,int ,int **,int *,unsigned short*) ;
 int ITypeLib_GetTypeInfoOfGuid (int *,int *,int **) ;
 int ITypeLib_Release (int *) ;
 int LANG_NEUTRAL ;
 int SUCCEEDED (int ) ;
 int V_DISPATCH (int *) ;
 int efree (int *) ;
 int * php_com_load_typelib (char*,int ) ;
 int * php_com_string_to_olestring (char*,int ,int ) ;
 int php_error_docref (int *,int ,char*) ;
 int strlen (char*) ;

ITypeInfo *php_com_locate_typeinfo(char *typelibname, php_com_dotnet_object *obj, char *dispname, int sink)
{
 ITypeInfo *typeinfo = ((void*)0);
 ITypeLib *typelib = ((void*)0);
 int gotguid = 0;
 GUID iid;

 if (obj) {
  if (dispname == ((void*)0) && sink) {
   IProvideClassInfo2 *pci2;
   IProvideClassInfo *pci;

   if (SUCCEEDED(IDispatch_QueryInterface(V_DISPATCH(&obj->v), &IID_IProvideClassInfo2, (void**)&pci2))) {
    gotguid = SUCCEEDED(IProvideClassInfo2_GetGUID(pci2, GUIDKIND_DEFAULT_SOURCE_DISP_IID, &iid));
    IProvideClassInfo2_Release(pci2);
   }
   if (!gotguid && SUCCEEDED(IDispatch_QueryInterface(V_DISPATCH(&obj->v), &IID_IProvideClassInfo, (void**)&pci))) {


    php_error_docref(((void*)0), E_WARNING, "IProvideClassInfo: this code not yet written!");
    IProvideClassInfo_Release(pci);
   }
  } else if (dispname == ((void*)0)) {
   if (obj->typeinfo) {
    ITypeInfo_AddRef(obj->typeinfo);
    return obj->typeinfo;
   } else {
    IDispatch_GetTypeInfo(V_DISPATCH(&obj->v), 0, LANG_NEUTRAL, &typeinfo);
    if (typeinfo) {
     return typeinfo;
    }
   }
  } else if (dispname && obj->typeinfo) {
   unsigned int idx;

   ITypeInfo_GetContainingTypeLib(obj->typeinfo, &typelib, &idx);
  } else if (typelibname == ((void*)0)) {
   IDispatch_GetTypeInfo(V_DISPATCH(&obj->v), 0, LANG_NEUTRAL, &typeinfo);
   if (dispname) {
    unsigned int idx;

    ITypeInfo_GetContainingTypeLib(typeinfo, &typelib, &idx);

    if (typelib) {
     ITypeInfo_Release(typeinfo);
     typeinfo = ((void*)0);
    }
   }
  }
 } else if (typelibname) {

  typelib = php_com_load_typelib(typelibname, CP_THREAD_ACP);
 }

 if (!gotguid && dispname && typelib) {
  unsigned short cfound;
  MEMBERID memid;
  OLECHAR *olename = php_com_string_to_olestring(dispname, strlen(dispname), CP_ACP);

  cfound = 1;
  if (FAILED(ITypeLib_FindName(typelib, olename, 0, &typeinfo, &memid, &cfound)) || cfound == 0) {
   CLSID coclass;
   ITypeInfo *coinfo;


   if (SUCCEEDED(CLSIDFromProgID(olename, &coclass)) &&
     SUCCEEDED(ITypeLib_GetTypeInfoOfGuid(typelib, &coclass, &coinfo))) {


    TYPEATTR *attr;
    int i;

    ITypeInfo_GetTypeAttr(coinfo, &attr);

    for (i = 0; i < attr->cImplTypes; i++) {
     HREFTYPE rt;
     int tf;

     if (FAILED(ITypeInfo_GetImplTypeFlags(coinfo, i, &tf))) {
      continue;
     }

     if ((sink && tf == (IMPLTYPEFLAG_FSOURCE|IMPLTYPEFLAG_FDEFAULT)) ||
      (!sink && (tf & IMPLTYPEFLAG_FSOURCE) == 0)) {



      if (SUCCEEDED(ITypeInfo_GetRefTypeOfImplType(coinfo, i, &rt)))
       if (SUCCEEDED(ITypeInfo_GetRefTypeInfo(coinfo, rt, &typeinfo)))
        break;

     }
    }

    ITypeInfo_ReleaseTypeAttr(coinfo, attr);
    ITypeInfo_Release(coinfo);
   }
  }


  efree(olename);
 } else if (gotguid) {
  ITypeLib_GetTypeInfoOfGuid(typelib, &iid, &typeinfo);
 }

 if (typelib) {
  ITypeLib_Release(typelib);
 }

 return typeinfo;
}
