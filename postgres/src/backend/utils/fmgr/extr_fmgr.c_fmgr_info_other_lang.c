
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int fn_addr; } ;
struct TYPE_7__ {int lanplcallfoid; } ;
struct TYPE_6__ {int prolang; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_proc ;
typedef TYPE_2__* Form_pg_language ;
typedef TYPE_3__ FmgrInfo ;


 int CurrentMemoryContext ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int LANGOID ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int fmgr_info_cxt_security (int ,TYPE_3__*,int ,int) ;

__attribute__((used)) static void
fmgr_info_other_lang(Oid functionId, FmgrInfo *finfo, HeapTuple procedureTuple)
{
 Form_pg_proc procedureStruct = (Form_pg_proc) GETSTRUCT(procedureTuple);
 Oid language = procedureStruct->prolang;
 HeapTuple languageTuple;
 Form_pg_language languageStruct;
 FmgrInfo plfinfo;

 languageTuple = SearchSysCache1(LANGOID, ObjectIdGetDatum(language));
 if (!HeapTupleIsValid(languageTuple))
  elog(ERROR, "cache lookup failed for language %u", language);
 languageStruct = (Form_pg_language) GETSTRUCT(languageTuple);






 fmgr_info_cxt_security(languageStruct->lanplcallfoid, &plfinfo,
         CurrentMemoryContext, 1);
 finfo->fn_addr = plfinfo.fn_addr;

 ReleaseSysCache(languageTuple);
}
