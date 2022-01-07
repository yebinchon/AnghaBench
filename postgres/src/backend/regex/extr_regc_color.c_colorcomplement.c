
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {int dummy; } ;
struct nfa {int dummy; } ;
struct colormap {struct colordesc* cd; } ;
struct colordesc {int flags; } ;
typedef scalar_t__ color ;


 struct colordesc* CDEND (struct colormap*) ;
 int CISERR () ;
 int PLAIN ;
 int PSEUDO ;
 int UNUSEDCOLOR (struct colordesc*) ;
 int assert (int) ;
 int * findarc (struct state*,int ,scalar_t__) ;
 int newarc (struct nfa*,int,scalar_t__,struct state*,struct state*) ;

__attribute__((used)) static void
colorcomplement(struct nfa *nfa,
    struct colormap *cm,
    int type,
    struct state *of,
    struct state *from,
    struct state *to)
{
 struct colordesc *cd;
 struct colordesc *end = CDEND(cm);
 color co;

 assert(of != from);
 for (cd = cm->cd, co = 0; cd < end && !CISERR(); cd++, co++)
  if (!UNUSEDCOLOR(cd) && !(cd->flags & PSEUDO))
   if (findarc(of, PLAIN, co) == ((void*)0))
    newarc(nfa, type, co, from, to);
}
