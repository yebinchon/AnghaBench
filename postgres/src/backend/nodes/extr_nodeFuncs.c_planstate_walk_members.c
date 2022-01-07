
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PlanState ;



__attribute__((used)) static bool
planstate_walk_members(PlanState **planstates, int nplans,
        bool (*walker) (), void *context)
{
 int j;

 for (j = 0; j < nplans; j++)
 {
  if (walker(planstates[j], context))
   return 1;
 }

 return 0;
}
