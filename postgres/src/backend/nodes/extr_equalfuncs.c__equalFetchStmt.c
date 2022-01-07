
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FetchStmt ;


 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int direction ;
 int howMany ;
 int ismove ;
 int portalname ;

__attribute__((used)) static bool
_equalFetchStmt(const FetchStmt *a, const FetchStmt *b)
{
 COMPARE_SCALAR_FIELD(direction);
 COMPARE_SCALAR_FIELD(howMany);
 COMPARE_STRING_FIELD(portalname);
 COMPARE_SCALAR_FIELD(ismove);

 return 1;
}
