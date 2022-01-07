
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterEventTrigStmt ;


 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int tgenabled ;
 int trigname ;

__attribute__((used)) static bool
_equalAlterEventTrigStmt(const AlterEventTrigStmt *a, const AlterEventTrigStmt *b)
{
 COMPARE_STRING_FIELD(trigname);
 COMPARE_SCALAR_FIELD(tgenabled);

 return 1;
}
