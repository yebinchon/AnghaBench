
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Index ;
typedef int EState ;


 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int EXEC_FLAG_EXPLAIN_ONLY ;
 int EXEC_FLAG_WITH_NO_DATA ;
 int ExecGetRangeTableRelation (int *,int ) ;
 int RelationGetRelationName (int ) ;
 int RelationIsScannable (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ) ;

Relation
ExecOpenScanRelation(EState *estate, Index scanrelid, int eflags)
{
 Relation rel;


 rel = ExecGetRangeTableRelation(estate, scanrelid);






 if ((eflags & (EXEC_FLAG_EXPLAIN_ONLY | EXEC_FLAG_WITH_NO_DATA)) == 0 &&
  !RelationIsScannable(rel))
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("materialized view \"%s\" has not been populated",
      RelationGetRelationName(rel)),
     errhint("Use the REFRESH MATERIALIZED VIEW command.")));

 return rel;
}
