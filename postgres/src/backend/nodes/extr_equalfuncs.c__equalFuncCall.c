
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FuncCall ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int agg_distinct ;
 int agg_filter ;
 int agg_order ;
 int agg_star ;
 int agg_within_group ;
 int args ;
 int func_variadic ;
 int funcname ;
 int location ;
 int over ;

__attribute__((used)) static bool
_equalFuncCall(const FuncCall *a, const FuncCall *b)
{
 COMPARE_NODE_FIELD(funcname);
 COMPARE_NODE_FIELD(args);
 COMPARE_NODE_FIELD(agg_order);
 COMPARE_NODE_FIELD(agg_filter);
 COMPARE_SCALAR_FIELD(agg_within_group);
 COMPARE_SCALAR_FIELD(agg_star);
 COMPARE_SCALAR_FIELD(agg_distinct);
 COMPARE_SCALAR_FIELD(func_variadic);
 COMPARE_NODE_FIELD(over);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
