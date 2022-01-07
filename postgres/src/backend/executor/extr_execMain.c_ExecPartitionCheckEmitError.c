
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int TupleTableSlot ;
typedef int TupleDesc ;
struct TYPE_5__ {scalar_t__ ri_RelationDesc; scalar_t__ ri_PartitionRoot; } ;
typedef TYPE_1__ ResultRelInfo ;
typedef int Oid ;
typedef int EState ;
typedef int Bitmapset ;
typedef int AttrNumber ;


 int ERRCODE_CHECK_VIOLATION ;
 int ERROR ;
 char* ExecBuildSlotValueDescription (int ,int *,int ,int *,int) ;
 int GetInsertedColumns (TYPE_1__*,int *) ;
 int GetUpdatedColumns (TYPE_1__*,int *) ;
 int MakeTupleTableSlot (int ,int *) ;
 int RelationGetDescr (scalar_t__) ;
 int RelationGetRelationName (scalar_t__) ;
 int RelationGetRelid (scalar_t__) ;
 int TTSOpsVirtual ;
 int * bms_union (int ,int ) ;
 int * convert_tuples_by_name_map_if_req (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,char*) ;
 int errmsg (char*,int ) ;
 int * execute_attr_map_slot (int *,int *,int ) ;

void
ExecPartitionCheckEmitError(ResultRelInfo *resultRelInfo,
       TupleTableSlot *slot,
       EState *estate)
{
 Oid root_relid;
 TupleDesc tupdesc;
 char *val_desc;
 Bitmapset *modifiedCols;







 if (resultRelInfo->ri_PartitionRoot)
 {
  TupleDesc old_tupdesc;
  AttrNumber *map;

  root_relid = RelationGetRelid(resultRelInfo->ri_PartitionRoot);
  tupdesc = RelationGetDescr(resultRelInfo->ri_PartitionRoot);

  old_tupdesc = RelationGetDescr(resultRelInfo->ri_RelationDesc);

  map = convert_tuples_by_name_map_if_req(old_tupdesc, tupdesc);





  if (map != ((void*)0))
   slot = execute_attr_map_slot(map, slot,
           MakeTupleTableSlot(tupdesc, &TTSOpsVirtual));
 }
 else
 {
  root_relid = RelationGetRelid(resultRelInfo->ri_RelationDesc);
  tupdesc = RelationGetDescr(resultRelInfo->ri_RelationDesc);
 }

 modifiedCols = bms_union(GetInsertedColumns(resultRelInfo, estate),
        GetUpdatedColumns(resultRelInfo, estate));

 val_desc = ExecBuildSlotValueDescription(root_relid,
            slot,
            tupdesc,
            modifiedCols,
            64);
 ereport(ERROR,
   (errcode(ERRCODE_CHECK_VIOLATION),
    errmsg("new row for relation \"%s\" violates partition constraint",
     RelationGetRelationName(resultRelInfo->ri_RelationDesc)),
    val_desc ? errdetail("Failing row contains %s.", val_desc) : 0));
}
