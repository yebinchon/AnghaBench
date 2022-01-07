
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ListenStmt ;


 int COMPARE_STRING_FIELD (int ) ;
 int conditionname ;

__attribute__((used)) static bool
_equalListenStmt(const ListenStmt *a, const ListenStmt *b)
{
 COMPARE_STRING_FIELD(conditionname);

 return 1;
}
