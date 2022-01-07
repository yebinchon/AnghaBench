
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Plan ;
typedef int LockRows ;


 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outPlanInfo (int ,int const*) ;
 int epqParam ;
 int rowMarks ;

__attribute__((used)) static void
_outLockRows(StringInfo str, const LockRows *node)
{
 WRITE_NODE_TYPE("LOCKROWS");

 _outPlanInfo(str, (const Plan *) node);

 WRITE_NODE_FIELD(rowMarks);
 WRITE_INT_FIELD(epqParam);
}
