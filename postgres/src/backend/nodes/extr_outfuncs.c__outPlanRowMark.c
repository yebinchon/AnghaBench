
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int PlanRowMark ;


 int LockClauseStrength ;
 int LockWaitPolicy ;
 int RowMarkType ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_UINT_FIELD (int ) ;
 int allMarkTypes ;
 int isParent ;
 int markType ;
 int prti ;
 int rowmarkId ;
 int rti ;
 int strength ;
 int waitPolicy ;

__attribute__((used)) static void
_outPlanRowMark(StringInfo str, const PlanRowMark *node)
{
 WRITE_NODE_TYPE("PLANROWMARK");

 WRITE_UINT_FIELD(rti);
 WRITE_UINT_FIELD(prti);
 WRITE_UINT_FIELD(rowmarkId);
 WRITE_ENUM_FIELD(markType, RowMarkType);
 WRITE_INT_FIELD(allMarkTypes);
 WRITE_ENUM_FIELD(strength, LockClauseStrength);
 WRITE_ENUM_FIELD(waitPolicy, LockWaitPolicy);
 WRITE_BOOL_FIELD(isParent);
}
