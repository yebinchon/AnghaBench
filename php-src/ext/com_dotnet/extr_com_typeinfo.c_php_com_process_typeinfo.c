
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int zval ;
struct TYPE_17__ {scalar_t__ vt; TYPE_4__* lptdesc; } ;
struct TYPE_15__ {int wParamFlags; } ;
struct TYPE_20__ {TYPE_5__ tdesc; TYPE_3__ paramdesc; } ;
struct TYPE_13__ {scalar_t__ vt; } ;
struct TYPE_14__ {TYPE_1__ tdesc; } ;
struct TYPE_19__ {int invkind; scalar_t__ memid; int cParams; TYPE_8__* lprgelemdescParam; TYPE_2__ elemdescFunc; } ;
struct TYPE_18__ {scalar_t__ typekind; int cFuncs; int guid; } ;
struct TYPE_16__ {scalar_t__ vt; } ;
typedef TYPE_6__ TYPEATTR ;
typedef int OLECHAR ;
typedef int ITypeInfo ;
typedef int HashTable ;
typedef int GUID ;
typedef TYPE_7__ FUNCDESC ;
typedef TYPE_8__ ELEMDESC ;
typedef scalar_t__ DISPID ;
typedef char BSTR ;


 int DISPATCH_PROPERTYGET ;
 int DISPATCH_PROPERTYPUT ;
 int E_WARNING ;
 scalar_t__ FAILED (int ) ;
 int ITypeInfo_GetDocumentation (int *,scalar_t__,int **,int **,int *,int *) ;
 int ITypeInfo_GetFuncDesc (int *,int,TYPE_7__**) ;
 int ITypeInfo_GetNames (int *,scalar_t__,char*,int,unsigned int*) ;
 int ITypeInfo_GetTypeAttr (int *,TYPE_6__**) ;
 int ITypeInfo_ReleaseFuncDesc (int *,TYPE_7__*) ;
 int ITypeInfo_ReleaseTypeAttr (int *,TYPE_6__*) ;
 scalar_t__ MEMBERID_NIL ;
 int PARAMFLAG_FIN ;
 int PARAMFLAG_FOUT ;
 int SysFreeString (char) ;
 scalar_t__ TKIND_DISPATCH ;
 scalar_t__ VT_PTR ;
 scalar_t__ VT_VOID ;
 int ZVAL_PTR_DTOR ;
 int ZVAL_STRINGL (int *,char*,size_t) ;
 int efree (char*) ;
 int memcpy (int *,int *,int) ;
 char* php_com_olestring_to_string (char,size_t*,int) ;
 char* php_com_string_from_clsid (int *,int) ;
 int php_printf (char*,...) ;
 scalar_t__ safe_emalloc (int,int,int ) ;
 int vt_to_string (scalar_t__) ;
 int zend_error (int ,char*,scalar_t__) ;
 int zend_hash_index_update (int *,scalar_t__,int *) ;
 int zend_hash_init (int *,int ,int *,int ,int ) ;
 int zend_str_tolower (char*,size_t) ;

int php_com_process_typeinfo(ITypeInfo *typeinfo, HashTable *id_to_name, int printdef, GUID *guid, int codepage)
{
 TYPEATTR *attr;
 FUNCDESC *func;
 int i;
 OLECHAR *olename;
 char *ansiname = ((void*)0);
 size_t ansinamelen;
 int ret = 0;

 if (FAILED(ITypeInfo_GetTypeAttr(typeinfo, &attr))) {
  return 0;
 }


 if (id_to_name == ((void*)0) || attr->typekind == TKIND_DISPATCH) {

  if (guid) {
   memcpy(guid, &attr->guid, sizeof(GUID));
  }

  if (printdef) {
   char *guidstring;

   ITypeInfo_GetDocumentation(typeinfo, MEMBERID_NIL, &olename, ((void*)0), ((void*)0), ((void*)0));
   ansiname = php_com_olestring_to_string(olename, &ansinamelen, codepage);
   SysFreeString(olename);

   guidstring = php_com_string_from_clsid(&attr->guid, codepage);
   php_printf("class %s { /* GUID=%s */\n", ansiname, guidstring);
   efree(guidstring);

   efree(ansiname);
  }

  if (id_to_name) {
   zend_hash_init(id_to_name, 0, ((void*)0), ZVAL_PTR_DTOR, 0);
  }


  for (i = 0; i < attr->cFuncs; i++) {
   zval tmp;
   DISPID lastid = 0;
   int isprop;

   if (FAILED(ITypeInfo_GetFuncDesc(typeinfo, i, &func)))
    break;

   isprop = (func->invkind & DISPATCH_PROPERTYGET || func->invkind & DISPATCH_PROPERTYPUT);

   if (!isprop || lastid != func->memid) {

    lastid = func->memid;

    ITypeInfo_GetDocumentation(typeinfo, func->memid, &olename, ((void*)0), ((void*)0), ((void*)0));
    ansiname = php_com_olestring_to_string(olename, &ansinamelen, codepage);
    SysFreeString(olename);

    if (printdef) {
     int j;
     char *funcdesc;
     size_t funcdesclen;
     unsigned int cnames = 0;
     BSTR *names;

     names = (BSTR*)safe_emalloc((func->cParams + 1), sizeof(BSTR), 0);

     ITypeInfo_GetNames(typeinfo, func->memid, names, func->cParams + 1, &cnames);

     SysFreeString(names[0]);

     php_printf("\t/* DISPID=%d */\n", func->memid);

     if (func->elemdescFunc.tdesc.vt != VT_VOID) {
      php_printf("\t/* %s [%d] */\n",
        vt_to_string(func->elemdescFunc.tdesc.vt),
        func->elemdescFunc.tdesc.vt
        );
     }

     if (isprop) {

      ITypeInfo_GetDocumentation(typeinfo, func->memid, ((void*)0), &olename, ((void*)0), ((void*)0));
      if (olename) {
       funcdesc = php_com_olestring_to_string(olename, &funcdesclen, codepage);
       SysFreeString(olename);
       php_printf("\t/* %s */\n", funcdesc);
       efree(funcdesc);
      }

      php_printf("\tvar $%s;\n\n", ansiname);

     } else {


      php_printf("\tfunction %s(\n", ansiname);

      for (j = 0; j < func->cParams; j++) {
       ELEMDESC *elem = &func->lprgelemdescParam[j];

       php_printf("\t\t/* %s [%d] ", vt_to_string(elem->tdesc.vt), elem->tdesc.vt);

       if (elem->paramdesc.wParamFlags & PARAMFLAG_FIN)
        php_printf("[in]");
       if (elem->paramdesc.wParamFlags & PARAMFLAG_FOUT)
        php_printf("[out]");

       if (elem->tdesc.vt == VT_PTR) {

        php_printf(" --> %s [%d] ",
          vt_to_string(elem->tdesc.lptdesc->vt),
          elem->tdesc.lptdesc->vt
          );
       }


       if (j+1 < (int)cnames) {
        funcdesc = php_com_olestring_to_string(names[j+1], &funcdesclen, codepage);
        SysFreeString(names[j+1]);
       } else {
        funcdesc = "???";
       }

       php_printf(" */ %s%s%c\n",
         elem->tdesc.vt == VT_PTR ? "&$" : "$",
         funcdesc,
         j == func->cParams - 1 ? ' ' : ','
         );

       if (j+1 < (int)cnames) {
        efree(funcdesc);
       }
      }

      php_printf("\t\t)\n\t{\n");

      ITypeInfo_GetDocumentation(typeinfo, func->memid, ((void*)0), &olename, ((void*)0), ((void*)0));
      if (olename) {
       funcdesc = php_com_olestring_to_string(olename, &funcdesclen, codepage);
       SysFreeString(olename);
       php_printf("\t\t/* %s */\n", funcdesc);
       efree(funcdesc);
      }

      php_printf("\t}\n");
     }

     efree(names);
    }

    if (id_to_name) {
     zend_str_tolower(ansiname, ansinamelen);
     ZVAL_STRINGL(&tmp, ansiname, ansinamelen);
     zend_hash_index_update(id_to_name, func->memid, &tmp);

     efree(ansiname);
    }
   }
   ITypeInfo_ReleaseFuncDesc(typeinfo, func);
  }

  if (printdef) {
   php_printf("}\n");
  }

  ret = 1;
 } else {
  zend_error(E_WARNING, "That's not a dispatchable interface!! type kind = %08x", attr->typekind);
 }

 ITypeInfo_ReleaseTypeAttr(typeinfo, attr);

 return ret;
}
