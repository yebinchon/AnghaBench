
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ClosePortalStmt ;


 int COMPARE_STRING_FIELD (int ) ;
 int portalname ;

__attribute__((used)) static bool
_equalClosePortalStmt(const ClosePortalStmt *a, const ClosePortalStmt *b)
{
 COMPARE_STRING_FIELD(portalname);

 return 1;
}
