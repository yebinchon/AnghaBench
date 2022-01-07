
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Plan ;
typedef int Append ;


 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outPlanInfo (int ,int const*) ;
 int appendplans ;
 int first_partial_plan ;
 int part_prune_info ;

__attribute__((used)) static void
_outAppend(StringInfo str, const Append *node)
{
 WRITE_NODE_TYPE("APPEND");

 _outPlanInfo(str, (const Plan *) node);

 WRITE_NODE_FIELD(appendplans);
 WRITE_INT_FIELD(first_partial_plan);
 WRITE_NODE_FIELD(part_prune_info);
}
