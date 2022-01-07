
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fp_info {int funcid; int fname; int argtypes; int rettype; int namespace; int flinfo; } ;
struct TYPE_3__ {int values; } ;
struct TYPE_4__ {int pronargs; int proname; TYPE_1__ proargtypes; int prorettype; int pronamespace; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_proc ;


 int Assert (int ) ;
 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 int FUNC_MAX_ARGS ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int MemSet (struct fp_info*,int ,int) ;
 int NAMEDATALEN ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int PROCOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int fmgr_info (int ,int *) ;
 int memcpy (int ,int ,int) ;
 int strlcpy (int ,int ,int ) ;

__attribute__((used)) static void
fetch_fp_info(Oid func_id, struct fp_info *fip)
{
 HeapTuple func_htp;
 Form_pg_proc pp;

 Assert(OidIsValid(func_id));
 Assert(fip != ((void*)0));
 MemSet(fip, 0, sizeof(struct fp_info));
 fip->funcid = InvalidOid;

 fmgr_info(func_id, &fip->flinfo);

 func_htp = SearchSysCache1(PROCOID, ObjectIdGetDatum(func_id));
 if (!HeapTupleIsValid(func_htp))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_FUNCTION),
     errmsg("function with OID %u does not exist", func_id)));
 pp = (Form_pg_proc) GETSTRUCT(func_htp);


 if (pp->pronargs > FUNC_MAX_ARGS)
  elog(ERROR, "function %s has more than %d arguments",
    NameStr(pp->proname), FUNC_MAX_ARGS);

 fip->namespace = pp->pronamespace;
 fip->rettype = pp->prorettype;
 memcpy(fip->argtypes, pp->proargtypes.values, pp->pronargs * sizeof(Oid));
 strlcpy(fip->fname, NameStr(pp->proname), NAMEDATALEN);

 ReleaseSysCache(func_htp);




 fip->funcid = func_id;
}
