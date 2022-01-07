
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int CommonTableExpr ;


 int CTEMaterialize ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_STRING_FIELD (int ) ;
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

__attribute__((used)) static void
_outCommonTableExpr(StringInfo str, const CommonTableExpr *node)
{
 WRITE_NODE_TYPE("COMMONTABLEEXPR");

 WRITE_STRING_FIELD(ctename);
 WRITE_NODE_FIELD(aliascolnames);
 WRITE_ENUM_FIELD(ctematerialized, CTEMaterialize);
 WRITE_NODE_FIELD(ctequery);
 WRITE_LOCATION_FIELD(location);
 WRITE_BOOL_FIELD(cterecursive);
 WRITE_INT_FIELD(cterefcount);
 WRITE_NODE_FIELD(ctecolnames);
 WRITE_NODE_FIELD(ctecoltypes);
 WRITE_NODE_FIELD(ctecoltypmods);
 WRITE_NODE_FIELD(ctecolcollations);
}
