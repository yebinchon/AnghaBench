
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CreateTrigStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int args ;
 int columns ;
 int constrrel ;
 int deferrable ;
 int events ;
 int funcname ;
 int initdeferred ;
 int isconstraint ;
 int relation ;
 int row ;
 int timing ;
 int transitionRels ;
 int trigname ;
 int whenClause ;

__attribute__((used)) static bool
_equalCreateTrigStmt(const CreateTrigStmt *a, const CreateTrigStmt *b)
{
 COMPARE_STRING_FIELD(trigname);
 COMPARE_NODE_FIELD(relation);
 COMPARE_NODE_FIELD(funcname);
 COMPARE_NODE_FIELD(args);
 COMPARE_SCALAR_FIELD(row);
 COMPARE_SCALAR_FIELD(timing);
 COMPARE_SCALAR_FIELD(events);
 COMPARE_NODE_FIELD(columns);
 COMPARE_NODE_FIELD(whenClause);
 COMPARE_SCALAR_FIELD(isconstraint);
 COMPARE_NODE_FIELD(transitionRels);
 COMPARE_SCALAR_FIELD(deferrable);
 COMPARE_SCALAR_FIELD(initdeferred);
 COMPARE_NODE_FIELD(constrrel);

 return 1;
}
