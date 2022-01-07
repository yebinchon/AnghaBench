
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RangeTableFuncCol ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int coldefexpr ;
 int colexpr ;
 int colname ;
 int for_ordinality ;
 int is_not_null ;
 int location ;
 int typeName ;

__attribute__((used)) static bool
_equalRangeTableFuncCol(const RangeTableFuncCol *a, const RangeTableFuncCol *b)
{
 COMPARE_STRING_FIELD(colname);
 COMPARE_NODE_FIELD(typeName);
 COMPARE_SCALAR_FIELD(for_ordinality);
 COMPARE_SCALAR_FIELD(is_not_null);
 COMPARE_NODE_FIELD(colexpr);
 COMPARE_NODE_FIELD(coldefexpr);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
