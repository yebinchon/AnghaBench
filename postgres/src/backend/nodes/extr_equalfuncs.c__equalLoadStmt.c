
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LoadStmt ;


 int COMPARE_STRING_FIELD (int ) ;
 int filename ;

__attribute__((used)) static bool
_equalLoadStmt(const LoadStmt *a, const LoadStmt *b)
{
 COMPARE_STRING_FIELD(filename);

 return 1;
}
