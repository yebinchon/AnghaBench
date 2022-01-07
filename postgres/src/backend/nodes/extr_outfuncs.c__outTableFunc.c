
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TableFunc ;
typedef int StringInfo ;


 int WRITE_BITMAPSET_FIELD (int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int colcollations ;
 int coldefexprs ;
 int colexprs ;
 int colnames ;
 int coltypes ;
 int coltypmods ;
 int docexpr ;
 int location ;
 int notnulls ;
 int ns_names ;
 int ns_uris ;
 int ordinalitycol ;
 int rowexpr ;

__attribute__((used)) static void
_outTableFunc(StringInfo str, const TableFunc *node)
{
 WRITE_NODE_TYPE("TABLEFUNC");

 WRITE_NODE_FIELD(ns_uris);
 WRITE_NODE_FIELD(ns_names);
 WRITE_NODE_FIELD(docexpr);
 WRITE_NODE_FIELD(rowexpr);
 WRITE_NODE_FIELD(colnames);
 WRITE_NODE_FIELD(coltypes);
 WRITE_NODE_FIELD(coltypmods);
 WRITE_NODE_FIELD(colcollations);
 WRITE_NODE_FIELD(colexprs);
 WRITE_NODE_FIELD(coldefexprs);
 WRITE_BITMAPSET_FIELD(notnulls);
 WRITE_INT_FIELD(ordinalitycol);
 WRITE_LOCATION_FIELD(location);
}
