
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct colormap {struct colordesc* cd; } ;
struct colordesc {int nuchrs; int flags; int firstchr; int * arcs; int sub; scalar_t__ nschrs; } ;
typedef size_t color ;


 int CHR_MIN ;
 scalar_t__ CISERR () ;
 size_t COLORLESS ;
 int NOSUB ;
 int PSEUDO ;
 size_t newcolor (struct colormap*) ;

__attribute__((used)) static color
pseudocolor(struct colormap *cm)
{
 color co;
 struct colordesc *cd;

 co = newcolor(cm);
 if (CISERR())
  return COLORLESS;
 cd = &cm->cd[co];
 cd->nschrs = 0;
 cd->nuchrs = 1;
 cd->sub = NOSUB;
 cd->arcs = ((void*)0);
 cd->firstchr = CHR_MIN;
 cd->flags = PSEUDO;
 return co;
}
