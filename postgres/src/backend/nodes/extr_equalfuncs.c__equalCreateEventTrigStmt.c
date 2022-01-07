
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CreateEventTrigStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int eventname ;
 int funcname ;
 int trigname ;
 int whenclause ;

__attribute__((used)) static bool
_equalCreateEventTrigStmt(const CreateEventTrigStmt *a, const CreateEventTrigStmt *b)
{
 COMPARE_STRING_FIELD(trigname);
 COMPARE_STRING_FIELD(eventname);
 COMPARE_NODE_FIELD(whenclause);
 COMPARE_NODE_FIELD(funcname);

 return 1;
}
