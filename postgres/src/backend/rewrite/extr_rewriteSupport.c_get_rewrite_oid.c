
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ev_class; scalar_t__ oid; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_rewrite ;


 int Assert (int) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 scalar_t__ InvalidOid ;
 int ObjectIdGetDatum (scalar_t__) ;
 int PointerGetDatum (char const*) ;
 int RULERELNAME ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache2 (int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,int ) ;
 int get_rel_name (scalar_t__) ;

Oid
get_rewrite_oid(Oid relid, const char *rulename, bool missing_ok)
{
 HeapTuple tuple;
 Form_pg_rewrite ruleform;
 Oid ruleoid;


 tuple = SearchSysCache2(RULERELNAME,
       ObjectIdGetDatum(relid),
       PointerGetDatum(rulename));
 if (!HeapTupleIsValid(tuple))
 {
  if (missing_ok)
   return InvalidOid;
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("rule \"%s\" for relation \"%s\" does not exist",
      rulename, get_rel_name(relid))));
 }
 ruleform = (Form_pg_rewrite) GETSTRUCT(tuple);
 Assert(relid == ruleform->ev_class);
 ruleoid = ruleform->oid;
 ReleaseSysCache(tuple);
 return ruleoid;
}
