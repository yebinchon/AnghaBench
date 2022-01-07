
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int MemoryContext ;
typedef int FunctionCallInfo ;


 int AggCheckCallContext (int ,int *) ;
 int ERROR ;
 int MemoryContextSwitchTo (int ) ;
 int elog (int ,char*) ;
 int makeStringInfo () ;

__attribute__((used)) static StringInfo
makeStringAggState(FunctionCallInfo fcinfo)
{
 StringInfo state;
 MemoryContext aggcontext;
 MemoryContext oldcontext;

 if (!AggCheckCallContext(fcinfo, &aggcontext))
 {

  elog(ERROR, "string_agg_transfn called in non-aggregate context");
 }





 oldcontext = MemoryContextSwitchTo(aggcontext);
 state = makeStringInfo();
 MemoryContextSwitchTo(oldcontext);

 return state;
}
