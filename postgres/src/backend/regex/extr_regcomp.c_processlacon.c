
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int nfa; int cm; } ;
struct state {int dummy; } ;


 int AHEAD ;
 int BEHIND ;
 char LACON ;




 int NOTREACHED ;
 int assert (int ) ;
 int cloneouts (int ,struct state*,struct state*,struct state*,int ) ;
 int colorcomplement (int ,int ,int ,struct state*,struct state*,struct state*) ;
 int newarc (int ,char,int,struct state*,struct state*) ;
 int newlacon (struct vars*,struct state*,struct state*,int) ;
 struct state* single_color_transition (struct state*,struct state*) ;

__attribute__((used)) static void
processlacon(struct vars *v,
    struct state *begin,
    struct state *end,
    int latype,
    struct state *lp,
    struct state *rp)
{
 struct state *s1;
 int n;





 s1 = single_color_transition(begin, end);
 switch (latype)
 {
  case 130:

   if (s1 != ((void*)0))
   {
    cloneouts(v->nfa, s1, lp, rp, AHEAD);
    return;
   }
   break;
  case 131:

   if (s1 != ((void*)0))
   {
    colorcomplement(v->nfa, v->cm, AHEAD, s1, lp, rp);
    newarc(v->nfa, '$', 1, lp, rp);
    newarc(v->nfa, '$', 0, lp, rp);
    return;
   }
   break;
  case 128:

   if (s1 != ((void*)0))
   {
    cloneouts(v->nfa, s1, lp, rp, BEHIND);
    return;
   }
   break;
  case 129:

   if (s1 != ((void*)0))
   {
    colorcomplement(v->nfa, v->cm, BEHIND, s1, lp, rp);
    newarc(v->nfa, '^', 1, lp, rp);
    newarc(v->nfa, '^', 0, lp, rp);
    return;
   }
   break;
  default:
   assert(NOTREACHED);
 }


 n = newlacon(v, begin, end, latype);
 newarc(v->nfa, LACON, n, lp, rp);
}
