
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int FuncCall ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
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

__attribute__((used)) static void
_outFuncCall(StringInfo str, const FuncCall *node)
{
 WRITE_NODE_TYPE("FUNCCALL");

 WRITE_NODE_FIELD(funcname);
 WRITE_NODE_FIELD(args);
 WRITE_NODE_FIELD(agg_order);
 WRITE_NODE_FIELD(agg_filter);
 WRITE_BOOL_FIELD(agg_within_group);
 WRITE_BOOL_FIELD(agg_star);
 WRITE_BOOL_FIELD(agg_distinct);
 WRITE_BOOL_FIELD(func_variadic);
 WRITE_NODE_FIELD(over);
 WRITE_LOCATION_FIELD(location);
}
