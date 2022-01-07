
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ contype; scalar_t__ confrelid; scalar_t__ conrelid; int conname; } ;
struct TYPE_15__ {TYPE_1__* rd_rel; } ;
struct TYPE_14__ {int relpersistence; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef TYPE_2__* Relation ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_constraint ;


 int AccessShareLock ;
 int Anum_pg_constraint_confrelid ;
 int Anum_pg_constraint_conrelid ;
 int BTEqualStrategyNumber ;
 scalar_t__ CONSTRAINT_FOREIGN ;
 int ConstraintRelationId ;
 int ConstraintRelidTypidNameIndexId ;
 int ERRCODE_INVALID_TABLE_DEFINITION ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int F_OIDEQ ;
 int GETSTRUCT (int ) ;
 int GetRelationPublications (scalar_t__) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (scalar_t__) ;



 int RelationGetRelationName (TYPE_2__*) ;
 scalar_t__ RelationGetRelid (TYPE_2__*) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*,int ,...) ;
 int errtable (TYPE_2__*) ;
 int errtableconstraint (TYPE_2__*,int ) ;
 scalar_t__ list_length (int ) ;
 int relation_close (TYPE_2__*,int ) ;
 TYPE_2__* relation_open (scalar_t__,int ) ;
 int systable_beginscan (TYPE_2__*,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int ,int ) ;

__attribute__((used)) static bool
ATPrepChangePersistence(Relation rel, bool toLogged)
{
 Relation pg_constraint;
 HeapTuple tuple;
 SysScanDesc scan;
 ScanKeyData skey[1];






 switch (rel->rd_rel->relpersistence)
 {
  case 129:
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_TABLE_DEFINITION),
      errmsg("cannot change logged status of table \"%s\" because it is temporary",
       RelationGetRelationName(rel)),
      errtable(rel)));
   break;
  case 130:
   if (toLogged)

    return 0;
   break;
  case 128:
   if (!toLogged)

    return 0;
   break;
 }





 if (!toLogged &&
  list_length(GetRelationPublications(RelationGetRelid(rel))) > 0)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("cannot change table \"%s\" to unlogged because it is part of a publication",
      RelationGetRelationName(rel)),
     errdetail("Unlogged relations cannot be replicated.")));






 pg_constraint = table_open(ConstraintRelationId, AccessShareLock);





 ScanKeyInit(&skey[0],
    toLogged ? Anum_pg_constraint_conrelid :
    Anum_pg_constraint_confrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(RelationGetRelid(rel)));
 scan = systable_beginscan(pg_constraint,
         toLogged ? ConstraintRelidTypidNameIndexId : InvalidOid,
         1, ((void*)0), 1, skey);

 while (HeapTupleIsValid(tuple = systable_getnext(scan)))
 {
  Form_pg_constraint con = (Form_pg_constraint) GETSTRUCT(tuple);

  if (con->contype == CONSTRAINT_FOREIGN)
  {
   Oid foreignrelid;
   Relation foreignrel;


   foreignrelid = toLogged ? con->confrelid : con->conrelid;


   if (RelationGetRelid(rel) == foreignrelid)
    continue;

   foreignrel = relation_open(foreignrelid, AccessShareLock);

   if (toLogged)
   {
    if (foreignrel->rd_rel->relpersistence != 130)
     ereport(ERROR,
       (errcode(ERRCODE_INVALID_TABLE_DEFINITION),
        errmsg("could not change table \"%s\" to logged because it references unlogged table \"%s\"",
         RelationGetRelationName(rel),
         RelationGetRelationName(foreignrel)),
        errtableconstraint(rel, NameStr(con->conname))));
   }
   else
   {
    if (foreignrel->rd_rel->relpersistence == 130)
     ereport(ERROR,
       (errcode(ERRCODE_INVALID_TABLE_DEFINITION),
        errmsg("could not change table \"%s\" to unlogged because it references logged table \"%s\"",
         RelationGetRelationName(rel),
         RelationGetRelationName(foreignrel)),
        errtableconstraint(rel, NameStr(con->conname))));
   }

   relation_close(foreignrel, AccessShareLock);
  }
 }

 systable_endscan(scan);

 table_close(pg_constraint, AccessShareLock);

 return 1;
}
