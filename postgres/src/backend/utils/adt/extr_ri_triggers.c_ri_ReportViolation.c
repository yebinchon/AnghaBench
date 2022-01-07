
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int int16 ;
typedef int TupleTableSlot ;
typedef int * TupleDesc ;
struct TYPE_16__ {int atttypid; int attname; } ;
struct TYPE_15__ {int* fk_attnums; int* pk_attnums; int nkeys; int conname; } ;
struct TYPE_14__ {int * rd_att; int rd_id; } ;
struct TYPE_13__ {int data; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__ RI_ConstraintInfo ;
typedef int Oid ;
typedef TYPE_4__* Form_pg_attribute ;
typedef int Datum ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_SELECT ;
 int ERRCODE_FOREIGN_KEY_VIOLATION ;
 int ERROR ;
 int GetUserId () ;
 int InvalidOid ;
 char* NameStr (int ) ;
 char* OidOutputFunctionCall (int ,int ) ;
 int RI_PLAN_CHECK_LOOKUPPK ;
 scalar_t__ RLS_ENABLED ;
 int RelationGetRelationName (TYPE_2__*) ;
 TYPE_4__* TupleDescAttr (int *,int) ;
 int appendStringInfoString (TYPE_1__*,char*) ;
 scalar_t__ check_enable_rls (int ,int ,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int ,...) ;
 int errmsg (char*,int ,char*,...) ;
 int errtableconstraint (TYPE_2__*,char*) ;
 int getTypeOutputInfo (int ,int *,int*) ;
 int initStringInfo (TYPE_1__*) ;
 scalar_t__ pg_attribute_aclcheck (int ,int const,int ,int ) ;
 scalar_t__ pg_class_aclcheck (int ,int ,int ) ;
 int slot_getattr (int *,int,int*) ;

__attribute__((used)) static void
ri_ReportViolation(const RI_ConstraintInfo *riinfo,
       Relation pk_rel, Relation fk_rel,
       TupleTableSlot *violatorslot, TupleDesc tupdesc,
       int queryno, bool partgone)
{
 StringInfoData key_names;
 StringInfoData key_values;
 bool onfk;
 const int16 *attnums;
 Oid rel_oid;
 AclResult aclresult;
 bool has_perm = 1;





 onfk = (queryno == RI_PLAN_CHECK_LOOKUPPK);
 if (onfk)
 {
  attnums = riinfo->fk_attnums;
  rel_oid = fk_rel->rd_id;
  if (tupdesc == ((void*)0))
   tupdesc = fk_rel->rd_att;
 }
 else
 {
  attnums = riinfo->pk_attnums;
  rel_oid = pk_rel->rd_id;
  if (tupdesc == ((void*)0))
   tupdesc = pk_rel->rd_att;
 }
 if (partgone)
  has_perm = 1;
 else if (check_enable_rls(rel_oid, InvalidOid, 1) != RLS_ENABLED)
 {
  aclresult = pg_class_aclcheck(rel_oid, GetUserId(), ACL_SELECT);
  if (aclresult != ACLCHECK_OK)
  {

   for (int idx = 0; idx < riinfo->nkeys; idx++)
   {
    aclresult = pg_attribute_aclcheck(rel_oid, attnums[idx],
              GetUserId(),
              ACL_SELECT);


    if (aclresult != ACLCHECK_OK)
    {
     has_perm = 0;
     break;
    }
   }
  }
 }
 else
  has_perm = 0;

 if (has_perm)
 {

  initStringInfo(&key_names);
  initStringInfo(&key_values);
  for (int idx = 0; idx < riinfo->nkeys; idx++)
  {
   int fnum = attnums[idx];
   Form_pg_attribute att = TupleDescAttr(tupdesc, fnum - 1);
   char *name,
        *val;
   Datum datum;
   bool isnull;

   name = NameStr(att->attname);

   datum = slot_getattr(violatorslot, fnum, &isnull);
   if (!isnull)
   {
    Oid foutoid;
    bool typisvarlena;

    getTypeOutputInfo(att->atttypid, &foutoid, &typisvarlena);
    val = OidOutputFunctionCall(foutoid, datum);
   }
   else
    val = "null";

   if (idx > 0)
   {
    appendStringInfoString(&key_names, ", ");
    appendStringInfoString(&key_values, ", ");
   }
   appendStringInfoString(&key_names, name);
   appendStringInfoString(&key_values, val);
  }
 }

 if (partgone)
  ereport(ERROR,
    (errcode(ERRCODE_FOREIGN_KEY_VIOLATION),
     errmsg("removing partition \"%s\" violates foreign key constraint \"%s\"",
      RelationGetRelationName(pk_rel),
      NameStr(riinfo->conname)),
     errdetail("Key (%s)=(%s) is still referenced from table \"%s\".",
         key_names.data, key_values.data,
         RelationGetRelationName(fk_rel))));
 else if (onfk)
  ereport(ERROR,
    (errcode(ERRCODE_FOREIGN_KEY_VIOLATION),
     errmsg("insert or update on table \"%s\" violates foreign key constraint \"%s\"",
      RelationGetRelationName(fk_rel),
      NameStr(riinfo->conname)),
     has_perm ?
     errdetail("Key (%s)=(%s) is not present in table \"%s\".",
         key_names.data, key_values.data,
         RelationGetRelationName(pk_rel)) :
     errdetail("Key is not present in table \"%s\".",
         RelationGetRelationName(pk_rel)),
     errtableconstraint(fk_rel, NameStr(riinfo->conname))));
 else
  ereport(ERROR,
    (errcode(ERRCODE_FOREIGN_KEY_VIOLATION),
     errmsg("update or delete on table \"%s\" violates foreign key constraint \"%s\" on table \"%s\"",
      RelationGetRelationName(pk_rel),
      NameStr(riinfo->conname),
      RelationGetRelationName(fk_rel)),
     has_perm ?
     errdetail("Key (%s)=(%s) is still referenced from table \"%s\".",
         key_names.data, key_values.data,
         RelationGetRelationName(fk_rel)) :
     errdetail("Key is still referenced from table \"%s\".",
         RelationGetRelationName(fk_rel)),
     errtableconstraint(fk_rel, NameStr(riinfo->conname))));
}
