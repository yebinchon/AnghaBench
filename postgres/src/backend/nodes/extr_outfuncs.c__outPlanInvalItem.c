
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int PlanInvalItem ;


 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_UINT_FIELD (int ) ;
 int cacheId ;
 int hashValue ;

__attribute__((used)) static void
_outPlanInvalItem(StringInfo str, const PlanInvalItem *node)
{
 WRITE_NODE_TYPE("PLANINVALITEM");

 WRITE_INT_FIELD(cacheId);
 WRITE_UINT_FIELD(hashValue);
}
