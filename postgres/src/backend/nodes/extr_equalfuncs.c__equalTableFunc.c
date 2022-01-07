
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TableFunc ;


 int COMPARE_BITMAPSET_FIELD (int ) ;
 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
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

__attribute__((used)) static bool
_equalTableFunc(const TableFunc *a, const TableFunc *b)
{
 COMPARE_NODE_FIELD(ns_uris);
 COMPARE_NODE_FIELD(ns_names);
 COMPARE_NODE_FIELD(docexpr);
 COMPARE_NODE_FIELD(rowexpr);
 COMPARE_NODE_FIELD(colnames);
 COMPARE_NODE_FIELD(coltypes);
 COMPARE_NODE_FIELD(coltypmods);
 COMPARE_NODE_FIELD(colcollations);
 COMPARE_NODE_FIELD(colexprs);
 COMPARE_NODE_FIELD(coldefexprs);
 COMPARE_BITMAPSET_FIELD(notnulls);
 COMPARE_SCALAR_FIELD(ordinalitycol);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
