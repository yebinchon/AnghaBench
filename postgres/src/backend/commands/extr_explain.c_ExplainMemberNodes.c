
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PlanState ;
typedef int List ;
typedef int ExplainState ;


 int ExplainNode (int *,int *,char*,int *,int *) ;
 int ExplainPropertyInteger (char*,int *,int,int *) ;

__attribute__((used)) static void
ExplainMemberNodes(PlanState **planstates, int nsubnodes, int nplans,
       List *ancestors, ExplainState *es)
{
 int j;
 if (nsubnodes < nplans)
  ExplainPropertyInteger("Subplans Removed", ((void*)0), nplans - nsubnodes, es);

 for (j = 0; j < nsubnodes; j++)
  ExplainNode(planstates[j], ancestors,
     "Member", ((void*)0), es);
}
