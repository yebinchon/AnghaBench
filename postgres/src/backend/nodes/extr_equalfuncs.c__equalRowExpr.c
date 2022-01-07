
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RowExpr ;


 int COMPARE_COERCIONFORM_FIELD (int ) ;
 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int args ;
 int colnames ;
 int location ;
 int row_format ;
 int row_typeid ;

__attribute__((used)) static bool
_equalRowExpr(const RowExpr *a, const RowExpr *b)
{
 COMPARE_NODE_FIELD(args);
 COMPARE_SCALAR_FIELD(row_typeid);
 COMPARE_COERCIONFORM_FIELD(row_format);
 COMPARE_NODE_FIELD(colnames);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
