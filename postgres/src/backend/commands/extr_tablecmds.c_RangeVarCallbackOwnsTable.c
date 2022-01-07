
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int relname; } ;
typedef TYPE_1__ RangeVar ;
typedef int Oid ;


 int ACLCHECK_NOT_OWNER ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int GetUserId () ;
 int OidIsValid (int ) ;
 char RELKIND_MATVIEW ;
 char RELKIND_PARTITIONED_TABLE ;
 char RELKIND_RELATION ;
 char RELKIND_TOASTVALUE ;
 int aclcheck_error (int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 char get_rel_relkind (int ) ;
 int get_relkind_objtype (char) ;
 int pg_class_ownercheck (int ,int ) ;

void
RangeVarCallbackOwnsTable(const RangeVar *relation,
        Oid relId, Oid oldRelId, void *arg)
{
 char relkind;


 if (!OidIsValid(relId))
  return;






 relkind = get_rel_relkind(relId);
 if (!relkind)
  return;
 if (relkind != RELKIND_RELATION && relkind != RELKIND_TOASTVALUE &&
  relkind != RELKIND_MATVIEW && relkind != RELKIND_PARTITIONED_TABLE)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("\"%s\" is not a table or materialized view", relation->relname)));


 if (!pg_class_ownercheck(relId, GetUserId()))
  aclcheck_error(ACLCHECK_NOT_OWNER, get_relkind_objtype(get_rel_relkind(relId)), relation->relname);
}
