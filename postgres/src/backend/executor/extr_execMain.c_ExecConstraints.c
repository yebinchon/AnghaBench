
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int TupleTableSlot ;
typedef TYPE_1__* TupleDesc ;
struct TYPE_17__ {scalar_t__ num_check; scalar_t__ has_not_null; } ;
typedef TYPE_2__ TupleConstr ;
struct TYPE_19__ {int attname; scalar_t__ attnotnull; } ;
struct TYPE_18__ {scalar_t__ ri_PartitionRoot; scalar_t__ ri_PartitionCheck; scalar_t__ ri_RelationDesc; } ;
struct TYPE_16__ {int natts; TYPE_2__* constr; } ;
typedef TYPE_3__ ResultRelInfo ;
typedef scalar_t__ Relation ;
typedef TYPE_4__* Form_pg_attribute ;
typedef int EState ;
typedef int Bitmapset ;
typedef int AttrNumber ;


 int Assert (int) ;
 int ERRCODE_CHECK_VIOLATION ;
 int ERRCODE_NOT_NULL_VIOLATION ;
 int ERROR ;
 char* ExecBuildSlotValueDescription (int ,int *,TYPE_1__*,int *,int) ;
 char* ExecRelCheck (TYPE_3__*,int *,int *) ;
 int * GetInsertedColumns (TYPE_3__*,int *) ;
 int * GetUpdatedColumns (TYPE_3__*,int *) ;
 int MakeTupleTableSlot (TYPE_1__*,int *) ;
 int NameStr (int ) ;
 TYPE_1__* RelationGetDescr (scalar_t__) ;
 int RelationGetRelationName (scalar_t__) ;
 int RelationGetRelid (scalar_t__) ;
 int TTSOpsVirtual ;
 TYPE_4__* TupleDescAttr (TYPE_1__*,int) ;
 int * bms_union (int *,int *) ;
 int * convert_tuples_by_name_map_if_req (TYPE_1__*,TYPE_1__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,char*) ;
 int errmsg (char*,int ,...) ;
 int errtablecol (scalar_t__,int) ;
 int errtableconstraint (scalar_t__,char const*) ;
 int * execute_attr_map_slot (int *,int *,int ) ;
 scalar_t__ slot_attisnull (int *,int) ;

void
ExecConstraints(ResultRelInfo *resultRelInfo,
    TupleTableSlot *slot, EState *estate)
{
 Relation rel = resultRelInfo->ri_RelationDesc;
 TupleDesc tupdesc = RelationGetDescr(rel);
 TupleConstr *constr = tupdesc->constr;
 Bitmapset *modifiedCols;
 Bitmapset *insertedCols;
 Bitmapset *updatedCols;

 Assert(constr || resultRelInfo->ri_PartitionCheck);

 if (constr && constr->has_not_null)
 {
  int natts = tupdesc->natts;
  int attrChk;

  for (attrChk = 1; attrChk <= natts; attrChk++)
  {
   Form_pg_attribute att = TupleDescAttr(tupdesc, attrChk - 1);

   if (att->attnotnull && slot_attisnull(slot, attrChk))
   {
    char *val_desc;
    Relation orig_rel = rel;
    TupleDesc orig_tupdesc = RelationGetDescr(rel);
    if (resultRelInfo->ri_PartitionRoot)
    {
     AttrNumber *map;

     rel = resultRelInfo->ri_PartitionRoot;
     tupdesc = RelationGetDescr(rel);

     map = convert_tuples_by_name_map_if_req(orig_tupdesc,
               tupdesc);





     if (map != ((void*)0))
      slot = execute_attr_map_slot(map, slot,
              MakeTupleTableSlot(tupdesc, &TTSOpsVirtual));
    }

    insertedCols = GetInsertedColumns(resultRelInfo, estate);
    updatedCols = GetUpdatedColumns(resultRelInfo, estate);
    modifiedCols = bms_union(insertedCols, updatedCols);
    val_desc = ExecBuildSlotValueDescription(RelationGetRelid(rel),
               slot,
               tupdesc,
               modifiedCols,
               64);

    ereport(ERROR,
      (errcode(ERRCODE_NOT_NULL_VIOLATION),
       errmsg("null value in column \"%s\" violates not-null constraint",
        NameStr(att->attname)),
       val_desc ? errdetail("Failing row contains %s.", val_desc) : 0,
       errtablecol(orig_rel, attrChk)));
   }
  }
 }

 if (constr && constr->num_check > 0)
 {
  const char *failed;

  if ((failed = ExecRelCheck(resultRelInfo, slot, estate)) != ((void*)0))
  {
   char *val_desc;
   Relation orig_rel = rel;


   if (resultRelInfo->ri_PartitionRoot)
   {
    TupleDesc old_tupdesc = RelationGetDescr(rel);
    AttrNumber *map;

    rel = resultRelInfo->ri_PartitionRoot;
    tupdesc = RelationGetDescr(rel);

    map = convert_tuples_by_name_map_if_req(old_tupdesc,
              tupdesc);





    if (map != ((void*)0))
     slot = execute_attr_map_slot(map, slot,
             MakeTupleTableSlot(tupdesc, &TTSOpsVirtual));
   }

   insertedCols = GetInsertedColumns(resultRelInfo, estate);
   updatedCols = GetUpdatedColumns(resultRelInfo, estate);
   modifiedCols = bms_union(insertedCols, updatedCols);
   val_desc = ExecBuildSlotValueDescription(RelationGetRelid(rel),
              slot,
              tupdesc,
              modifiedCols,
              64);
   ereport(ERROR,
     (errcode(ERRCODE_CHECK_VIOLATION),
      errmsg("new row for relation \"%s\" violates check constraint \"%s\"",
       RelationGetRelationName(orig_rel), failed),
      val_desc ? errdetail("Failing row contains %s.", val_desc) : 0,
      errtableconstraint(orig_rel, failed)));
  }
 }
}
