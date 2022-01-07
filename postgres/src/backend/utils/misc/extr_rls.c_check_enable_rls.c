
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int relrowsecurity; int relforcerowsecurity; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_class ;


 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 scalar_t__ FirstNormalObjectId ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ GetUserId () ;
 int HeapTupleIsValid (int ) ;
 scalar_t__ InNoForceRLSOperation () ;
 int ObjectIdGetDatum (scalar_t__) ;
 int RELOID ;
 int RLS_ENABLED ;
 int RLS_NONE ;
 int RLS_NONE_ENV ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ) ;
 int get_rel_name (scalar_t__) ;
 scalar_t__ has_bypassrls_privilege (scalar_t__) ;
 int pg_class_ownercheck (scalar_t__,scalar_t__) ;
 int row_security ;

int
check_enable_rls(Oid relid, Oid checkAsUser, bool noError)
{
 Oid user_id = checkAsUser ? checkAsUser : GetUserId();
 HeapTuple tuple;
 Form_pg_class classform;
 bool relrowsecurity;
 bool relforcerowsecurity;
 bool amowner;


 if (relid < (Oid) FirstNormalObjectId)
  return RLS_NONE;


 tuple = SearchSysCache1(RELOID, ObjectIdGetDatum(relid));
 if (!HeapTupleIsValid(tuple))
  return RLS_NONE;
 classform = (Form_pg_class) GETSTRUCT(tuple);

 relrowsecurity = classform->relrowsecurity;
 relforcerowsecurity = classform->relforcerowsecurity;

 ReleaseSysCache(tuple);


 if (!relrowsecurity)
  return RLS_NONE;
 if (has_bypassrls_privilege(user_id))
  return RLS_NONE_ENV;
 amowner = pg_class_ownercheck(relid, user_id);
 if (amowner)
 {
  if (!relforcerowsecurity || InNoForceRLSOperation())
   return RLS_NONE_ENV;
 }





 if (!row_security && !noError)
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("query would be affected by row-level security policy for table \"%s\"",
      get_rel_name(relid)),
     amowner ? errhint("To disable the policy for the table's owner, use ALTER TABLE NO FORCE ROW LEVEL SECURITY.") : 0));


 return RLS_ENABLED;
}
