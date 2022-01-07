
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {int dummy; } ;
struct nfa {int dummy; } ;
struct colormap {struct colordesc* cd; } ;
struct colordesc {scalar_t__ sub; int flags; } ;
typedef scalar_t__ color ;


 struct colordesc* CDEND (struct colormap*) ;
 int CISERR () ;
 int PSEUDO ;
 int UNUSEDCOLOR (struct colordesc*) ;
 int newarc (struct nfa*,int,scalar_t__,struct state*,struct state*) ;

__attribute__((used)) static void
rainbow(struct nfa *nfa,
  struct colormap *cm,
  int type,
  color but,
  struct state *from,
  struct state *to)
{
 struct colordesc *cd;
 struct colordesc *end = CDEND(cm);
 color co;

 for (cd = cm->cd, co = 0; cd < end && !CISERR(); cd++, co++)
  if (!UNUSEDCOLOR(cd) && cd->sub != co && co != but &&
   !(cd->flags & PSEUDO))
   newarc(nfa, type, co, from, to);
}
