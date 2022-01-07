
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int RowMarkClause ;


 int LockClauseStrength ;
 int LockWaitPolicy ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_UINT_FIELD (int ) ;
 int pushedDown ;
 int rti ;
 int strength ;
 int waitPolicy ;

__attribute__((used)) static void
_outRowMarkClause(StringInfo str, const RowMarkClause *node)
{
 WRITE_NODE_TYPE("ROWMARKCLAUSE");

 WRITE_UINT_FIELD(rti);
 WRITE_ENUM_FIELD(strength, LockClauseStrength);
 WRITE_ENUM_FIELD(waitPolicy, LockWaitPolicy);
 WRITE_BOOL_FIELD(pushedDown);
}
