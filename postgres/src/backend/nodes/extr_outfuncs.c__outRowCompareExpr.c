
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int RowCompareExpr ;


 int RowCompareType ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int inputcollids ;
 int largs ;
 int opfamilies ;
 int opnos ;
 int rargs ;
 int rctype ;

__attribute__((used)) static void
_outRowCompareExpr(StringInfo str, const RowCompareExpr *node)
{
 WRITE_NODE_TYPE("ROWCOMPARE");

 WRITE_ENUM_FIELD(rctype, RowCompareType);
 WRITE_NODE_FIELD(opnos);
 WRITE_NODE_FIELD(opfamilies);
 WRITE_NODE_FIELD(inputcollids);
 WRITE_NODE_FIELD(largs);
 WRITE_NODE_FIELD(rargs);
}
