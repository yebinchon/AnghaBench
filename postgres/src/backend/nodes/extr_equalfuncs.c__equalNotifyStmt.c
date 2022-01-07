
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NotifyStmt ;


 int COMPARE_STRING_FIELD (int ) ;
 int conditionname ;
 int payload ;

__attribute__((used)) static bool
_equalNotifyStmt(const NotifyStmt *a, const NotifyStmt *b)
{
 COMPARE_STRING_FIELD(conditionname);
 COMPARE_STRING_FIELD(payload);

 return 1;
}
