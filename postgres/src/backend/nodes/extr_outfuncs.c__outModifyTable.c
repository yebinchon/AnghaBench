
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Plan ;
typedef int ModifyTable ;


 int CmdType ;
 int OnConflictAction ;
 int WRITE_BITMAPSET_FIELD (int ) ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_UINT_FIELD (int ) ;
 int _outPlanInfo (int ,int const*) ;
 int arbiterIndexes ;
 int canSetTag ;
 int epqParam ;
 int exclRelRTI ;
 int exclRelTlist ;
 int fdwDirectModifyPlans ;
 int fdwPrivLists ;
 int nominalRelation ;
 int onConflictAction ;
 int onConflictSet ;
 int onConflictWhere ;
 int operation ;
 int partColsUpdated ;
 int plans ;
 int resultRelIndex ;
 int resultRelations ;
 int returningLists ;
 int rootRelation ;
 int rootResultRelIndex ;
 int rowMarks ;
 int withCheckOptionLists ;

__attribute__((used)) static void
_outModifyTable(StringInfo str, const ModifyTable *node)
{
 WRITE_NODE_TYPE("MODIFYTABLE");

 _outPlanInfo(str, (const Plan *) node);

 WRITE_ENUM_FIELD(operation, CmdType);
 WRITE_BOOL_FIELD(canSetTag);
 WRITE_UINT_FIELD(nominalRelation);
 WRITE_UINT_FIELD(rootRelation);
 WRITE_BOOL_FIELD(partColsUpdated);
 WRITE_NODE_FIELD(resultRelations);
 WRITE_INT_FIELD(resultRelIndex);
 WRITE_INT_FIELD(rootResultRelIndex);
 WRITE_NODE_FIELD(plans);
 WRITE_NODE_FIELD(withCheckOptionLists);
 WRITE_NODE_FIELD(returningLists);
 WRITE_NODE_FIELD(fdwPrivLists);
 WRITE_BITMAPSET_FIELD(fdwDirectModifyPlans);
 WRITE_NODE_FIELD(rowMarks);
 WRITE_INT_FIELD(epqParam);
 WRITE_ENUM_FIELD(onConflictAction, OnConflictAction);
 WRITE_NODE_FIELD(arbiterIndexes);
 WRITE_NODE_FIELD(onConflictSet);
 WRITE_NODE_FIELD(onConflictWhere);
 WRITE_UINT_FIELD(exclRelRTI);
 WRITE_NODE_FIELD(exclRelTlist);
}
