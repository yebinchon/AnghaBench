
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CommonTableExpr ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int aliascolnames ;
 int ctecolcollations ;
 int ctecolnames ;
 int ctecoltypes ;
 int ctecoltypmods ;
 int ctematerialized ;
 int ctename ;
 int ctequery ;
 int cterecursive ;
 int cterefcount ;
 int location ;

__attribute__((used)) static bool
_equalCommonTableExpr(const CommonTableExpr *a, const CommonTableExpr *b)
{
 COMPARE_STRING_FIELD(ctename);
 COMPARE_NODE_FIELD(aliascolnames);
 COMPARE_SCALAR_FIELD(ctematerialized);
 COMPARE_NODE_FIELD(ctequery);
 COMPARE_LOCATION_FIELD(location);
 COMPARE_SCALAR_FIELD(cterecursive);
 COMPARE_SCALAR_FIELD(cterefcount);
 COMPARE_NODE_FIELD(ctecolnames);
 COMPARE_NODE_FIELD(ctecoltypes);
 COMPARE_NODE_FIELD(ctecoltypmods);
 COMPARE_NODE_FIELD(ctecolcollations);

 return 1;
}
