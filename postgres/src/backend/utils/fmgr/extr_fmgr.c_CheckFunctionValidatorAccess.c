
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ lanvalidator; int lanname; } ;
struct TYPE_3__ {scalar_t__ prolang; int proname; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_proc ;
typedef TYPE_2__* Form_pg_language ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_EXECUTE ;
 int ACL_USAGE ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int GetUserId () ;
 int HeapTupleIsValid (int ) ;
 int LANGOID ;
 int NameStr (int ) ;
 int OBJECT_FUNCTION ;
 int OBJECT_LANGUAGE ;
 int ObjectIdGetDatum (scalar_t__) ;
 int PROCOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int aclcheck_error (scalar_t__,int ,int ) ;
 int elog (int ,char*,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,scalar_t__,...) ;
 scalar_t__ pg_language_aclcheck (scalar_t__,int ,int ) ;
 scalar_t__ pg_proc_aclcheck (scalar_t__,int ,int ) ;

bool
CheckFunctionValidatorAccess(Oid validatorOid, Oid functionOid)
{
 HeapTuple procTup;
 HeapTuple langTup;
 Form_pg_proc procStruct;
 Form_pg_language langStruct;
 AclResult aclresult;





 procTup = SearchSysCache1(PROCOID, ObjectIdGetDatum(functionOid));
 if (!HeapTupleIsValid(procTup))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_FUNCTION),
     errmsg("function with OID %u does not exist", functionOid)));
 procStruct = (Form_pg_proc) GETSTRUCT(procTup);





 langTup = SearchSysCache1(LANGOID, ObjectIdGetDatum(procStruct->prolang));
 if (!HeapTupleIsValid(langTup))
  elog(ERROR, "cache lookup failed for language %u", procStruct->prolang);
 langStruct = (Form_pg_language) GETSTRUCT(langTup);

 if (langStruct->lanvalidator != validatorOid)
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("language validation function %u called for language %u instead of %u",
      validatorOid, procStruct->prolang,
      langStruct->lanvalidator)));


 aclresult = pg_language_aclcheck(procStruct->prolang, GetUserId(),
          ACL_USAGE);
 if (aclresult != ACLCHECK_OK)
  aclcheck_error(aclresult, OBJECT_LANGUAGE,
        NameStr(langStruct->lanname));






 aclresult = pg_proc_aclcheck(functionOid, GetUserId(), ACL_EXECUTE);
 if (aclresult != ACLCHECK_OK)
  aclcheck_error(aclresult, OBJECT_FUNCTION, NameStr(procStruct->proname));

 ReleaseSysCache(procTup);
 ReleaseSysCache(langTup);

 return 1;
}
