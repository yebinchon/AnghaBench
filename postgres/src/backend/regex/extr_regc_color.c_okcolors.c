
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfa {int dummy; } ;
struct colormap {struct colordesc* cd; } ;
struct colordesc {size_t sub; scalar_t__ nschrs; scalar_t__ nuchrs; struct arc* arcs; } ;
struct arc {size_t co; int to; int from; int type; struct arc* colorchain; } ;
typedef size_t color ;


 struct colordesc* CDEND (struct colormap*) ;
 size_t NOSUB ;
 scalar_t__ UNUSEDCOLOR (struct colordesc*) ;
 int assert (int) ;
 int colorchain (struct colormap*,struct arc*) ;
 int freecolor (struct colormap*,size_t) ;
 int newarc (struct nfa*,int ,size_t,int ,int ) ;
 int uncolorchain (struct colormap*,struct arc*) ;

__attribute__((used)) static void
okcolors(struct nfa *nfa,
   struct colormap *cm)
{
 struct colordesc *cd;
 struct colordesc *end = CDEND(cm);
 struct colordesc *scd;
 struct arc *a;
 color co;
 color sco;

 for (cd = cm->cd, co = 0; cd < end; cd++, co++)
 {
  sco = cd->sub;
  if (UNUSEDCOLOR(cd) || sco == NOSUB)
  {

  }
  else if (sco == co)
  {

  }
  else if (cd->nschrs == 0 && cd->nuchrs == 0)
  {

   cd->sub = NOSUB;
   scd = &cm->cd[sco];
   assert(scd->nschrs > 0 || scd->nuchrs > 0);
   assert(scd->sub == sco);
   scd->sub = NOSUB;
   while ((a = cd->arcs) != ((void*)0))
   {
    assert(a->co == co);
    uncolorchain(cm, a);
    a->co = sco;
    colorchain(cm, a);
   }
   freecolor(cm, co);
  }
  else
  {

   cd->sub = NOSUB;
   scd = &cm->cd[sco];
   assert(scd->nschrs > 0 || scd->nuchrs > 0);
   assert(scd->sub == sco);
   scd->sub = NOSUB;
   for (a = cd->arcs; a != ((void*)0); a = a->colorchain)
   {
    assert(a->co == co);
    newarc(nfa, a->type, sco, a->from, a->to);
   }
  }
 }
}
