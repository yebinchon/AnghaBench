
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct colormap {size_t max; scalar_t__ free; struct colordesc* cd; } ;
struct colordesc {size_t sub; scalar_t__ nschrs; scalar_t__ nuchrs; int flags; int * arcs; } ;
typedef size_t color ;


 int FREECOL ;
 size_t NOSUB ;
 scalar_t__ UNUSEDCOLOR (struct colordesc*) ;
 size_t WHITE ;
 int assert (int) ;

__attribute__((used)) static void
freecolor(struct colormap *cm,
    color co)
{
 struct colordesc *cd = &cm->cd[co];
 color pco,
    nco;

 assert(co >= 0);
 if (co == WHITE)
  return;

 assert(cd->arcs == ((void*)0));
 assert(cd->sub == NOSUB);
 assert(cd->nschrs == 0);
 assert(cd->nuchrs == 0);
 cd->flags = FREECOL;

 if ((size_t) co == cm->max)
 {
  while (cm->max > WHITE && UNUSEDCOLOR(&cm->cd[cm->max]))
   cm->max--;
  assert(cm->free >= 0);
  while ((size_t) cm->free > cm->max)
   cm->free = cm->cd[cm->free].sub;
  if (cm->free > 0)
  {
   assert(cm->free < cm->max);
   pco = cm->free;
   nco = cm->cd[pco].sub;
   while (nco > 0)
    if ((size_t) nco > cm->max)
    {

     nco = cm->cd[nco].sub;
     cm->cd[pco].sub = nco;
    }
    else
    {
     assert(nco < cm->max);
     pco = nco;
     nco = cm->cd[pco].sub;
    }
  }
 }
 else
 {
  cd->sub = cm->free;
  cm->free = (color) (cd - cm->cd);
 }
}
