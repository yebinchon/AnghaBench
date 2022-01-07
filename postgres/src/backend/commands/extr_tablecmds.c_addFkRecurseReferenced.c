
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_22__ {char* conname; int fk_matchtype; int fk_del_action; int fk_upd_action; int initially_valid; int initdeferred; int deferrable; int fk_attrs; } ;
struct TYPE_21__ {int nparts; int * oids; } ;
struct TYPE_20__ {TYPE_1__* rd_rel; } ;
struct TYPE_19__ {scalar_t__ relkind; } ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__* PartitionDesc ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef int List ;
typedef TYPE_4__ Constraint ;
typedef int AttrNumber ;


 int CONSTRAINT_FOREIGN ;
 int CONSTRAINT_RELATION ;
 char* ChooseConstraintName (int ,int ,char*,int ,int ) ;
 int ChooseForeignKeyConstraintNameAddition (int ) ;
 int CommandCounterIncrement () ;
 scalar_t__ ConstraintNameIsUsed (int ,int ,char*) ;
 int ConstraintRelationId ;
 int CreateConstraintEntry (char*,int ,int ,int ,int ,int ,int ,int ,int*,int,int,int ,int ,int ,int*,int *,int *,int *,int,int ,int ,int ,int *,int *,int *,int,int,int,int) ;
 int DEPENDENCY_INTERNAL ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int InvalidOid ;
 int NIL ;
 int NoLock ;
 int ObjectAddressSet (int ,int ,int ) ;
 scalar_t__ OidIsValid (int ) ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 scalar_t__ RELKIND_RELATION ;
 int RelationGetDescr (TYPE_2__*) ;
 int RelationGetNamespace (TYPE_2__*) ;
 TYPE_3__* RelationGetPartitionDesc (TYPE_2__*) ;
 int RelationGetRelationName (TYPE_2__*) ;
 int RelationGetRelid (TYPE_2__*) ;
 int ShareRowExclusiveLock ;
 int* convert_tuples_by_name_map_if_req (int ,int ) ;
 int createForeignKeyActionTriggers (TYPE_2__*,int ,TYPE_4__*,int ,int ) ;
 int elog (int ,char*,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int index_get_partition (TYPE_2__*,int ) ;
 int* palloc (int) ;
 int pfree (int*) ;
 int recordDependencyOn (int *,int *,int ) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int ,int ) ;

__attribute__((used)) static ObjectAddress
addFkRecurseReferenced(List **wqueue, Constraint *fkconstraint, Relation rel,
        Relation pkrel, Oid indexOid, Oid parentConstr,
        int numfks,
        int16 *pkattnum, int16 *fkattnum, Oid *pfeqoperators,
        Oid *ppeqoperators, Oid *ffeqoperators, bool old_check_ok)
{
 ObjectAddress address;
 Oid constrOid;
 char *conname;
 bool conislocal;
 int coninhcount;
 bool connoinherit;





 if (pkrel->rd_rel->relkind != RELKIND_RELATION &&
  pkrel->rd_rel->relkind != RELKIND_PARTITIONED_TABLE)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("referenced relation \"%s\" is not a table",
      RelationGetRelationName(pkrel))));





 if (ConstraintNameIsUsed(CONSTRAINT_RELATION,
        RelationGetRelid(rel),
        fkconstraint->conname))
  conname = ChooseConstraintName(RelationGetRelationName(rel),
            ChooseForeignKeyConstraintNameAddition(fkconstraint->fk_attrs),
            "fkey",
            RelationGetNamespace(rel), NIL);
 else
  conname = fkconstraint->conname;

 if (OidIsValid(parentConstr))
 {
  conislocal = 0;
  coninhcount = 1;
  connoinherit = 0;
 }
 else
 {
  conislocal = 1;
  coninhcount = 0;




  connoinherit = rel->rd_rel->relkind != RELKIND_PARTITIONED_TABLE;
 }




 constrOid = CreateConstraintEntry(conname,
           RelationGetNamespace(rel),
           CONSTRAINT_FOREIGN,
           fkconstraint->deferrable,
           fkconstraint->initdeferred,
           fkconstraint->initially_valid,
           parentConstr,
           RelationGetRelid(rel),
           fkattnum,
           numfks,
           numfks,
           InvalidOid,
           indexOid,
           RelationGetRelid(pkrel),
           pkattnum,
           pfeqoperators,
           ppeqoperators,
           ffeqoperators,
           numfks,
           fkconstraint->fk_upd_action,
           fkconstraint->fk_del_action,
           fkconstraint->fk_matchtype,
           ((void*)0),
           ((void*)0),
           ((void*)0),
           conislocal,
           coninhcount,
           connoinherit,
           0);

 ObjectAddressSet(address, ConstraintRelationId, constrOid);







 if (OidIsValid(parentConstr))
 {
  ObjectAddress referenced;

  ObjectAddressSet(referenced, ConstraintRelationId, parentConstr);
  recordDependencyOn(&address, &referenced, DEPENDENCY_INTERNAL);
 }


 CommandCounterIncrement();





 if (pkrel->rd_rel->relkind == RELKIND_RELATION)
 {
  createForeignKeyActionTriggers(rel, RelationGetRelid(pkrel),
            fkconstraint,
            constrOid, indexOid);
 }






 if (pkrel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
 {
  PartitionDesc pd = RelationGetPartitionDesc(pkrel);

  for (int i = 0; i < pd->nparts; i++)
  {
   Relation partRel;
   AttrNumber *map;
   AttrNumber *mapped_pkattnum;
   Oid partIndexId;

   partRel = table_open(pd->oids[i], ShareRowExclusiveLock);





   map = convert_tuples_by_name_map_if_req(RelationGetDescr(partRel),
             RelationGetDescr(pkrel));
   if (map)
   {
    mapped_pkattnum = palloc(sizeof(AttrNumber) * numfks);
    for (int j = 0; j < numfks; j++)
     mapped_pkattnum[j] = map[pkattnum[j] - 1];
   }
   else
    mapped_pkattnum = pkattnum;


   partIndexId = index_get_partition(partRel, indexOid);
   if (!OidIsValid(partIndexId))
    elog(ERROR, "index for %u not found in partition %s",
      indexOid, RelationGetRelationName(partRel));
   addFkRecurseReferenced(wqueue, fkconstraint, rel, partRel,
           partIndexId, constrOid, numfks,
           mapped_pkattnum, fkattnum,
           pfeqoperators, ppeqoperators, ffeqoperators,
           old_check_ok);


   table_close(partRel, NoLock);
   if (map)
   {
    pfree(mapped_pkattnum);
    pfree(map);
   }
  }
 }

 return address;
}
