
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct state {int nouts; int nins; struct arc* outs; TYPE_1__* ins; } ;
struct arc {scalar_t__ type; struct state* to; struct arc* outchain; } ;
struct TYPE_2__ {scalar_t__ type; struct state* from; } ;


 scalar_t__ EMPTY ;
 scalar_t__ PLAIN ;

__attribute__((used)) static struct state *
single_color_transition(struct state *s1, struct state *s2)
{
 struct arc *a;


 if (s1->nouts == 1 && s1->outs->type == EMPTY)
  s1 = s1->outs->to;

 if (s2->nins == 1 && s2->ins->type == EMPTY)
  s2 = s2->ins->from;

 if (s1 == s2)
  return ((void*)0);

 if (s1->outs == ((void*)0))
  return ((void*)0);

 for (a = s1->outs; a != ((void*)0); a = a->outchain)
 {
  if (a->type != PLAIN || a->to != s2)
   return ((void*)0);
 }

 return s1;
}
