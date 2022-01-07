
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ distinctClause; scalar_t__ groupClause; scalar_t__ hasTargetSRFs; scalar_t__ hasWindowFuncs; scalar_t__ hasAggs; int * havingQual; scalar_t__ setOperations; } ;
typedef TYPE_1__ Query ;
typedef scalar_t__ LockClauseStrength ;


 int Assert (int) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ LCS_NONE ;
 int LCS_asString (scalar_t__) ;
 scalar_t__ NIL ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;

void
CheckSelectLocking(Query *qry, LockClauseStrength strength)
{
 Assert(strength != LCS_NONE);

 if (qry->setOperations)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),


     errmsg("%s is not allowed with UNION/INTERSECT/EXCEPT",
      LCS_asString(strength))));
 if (qry->distinctClause != NIL)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),


     errmsg("%s is not allowed with DISTINCT clause",
      LCS_asString(strength))));
 if (qry->groupClause != NIL)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),


     errmsg("%s is not allowed with GROUP BY clause",
      LCS_asString(strength))));
 if (qry->havingQual != ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),


     errmsg("%s is not allowed with HAVING clause",
      LCS_asString(strength))));
 if (qry->hasAggs)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),


     errmsg("%s is not allowed with aggregate functions",
      LCS_asString(strength))));
 if (qry->hasWindowFuncs)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),


     errmsg("%s is not allowed with window functions",
      LCS_asString(strength))));
 if (qry->hasTargetSRFs)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),


     errmsg("%s is not allowed with set-returning functions in the target list",
      LCS_asString(strength))));
}
