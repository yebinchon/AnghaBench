
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vars {struct colormap* cm; } ;
struct state {int dummy; } ;
struct colormap {int numcmranges; TYPE_1__* cmranges; } ;
struct TYPE_3__ {scalar_t__ cmax; scalar_t__ cmin; int rownum; } ;
typedef TYPE_1__ colormaprange ;
typedef int color ;
typedef scalar_t__ chr ;


 int CERR (int ) ;
 int FREE (TYPE_1__*) ;
 scalar_t__ MALLOC (int) ;
 scalar_t__ MAX_SIMPLE_CHR ;
 int REG_ESPACE ;
 int assert (int) ;
 void* newhicolorrow (struct colormap*,int) ;
 int subcoloronerow (struct vars*,int,struct state*,struct state*,int *) ;

__attribute__((used)) static void
subcoloronerange(struct vars *v,
     chr from,
     chr to,
     struct state *lp,
     struct state *rp,
     color *lastsubcolor)
{
 struct colormap *cm = v->cm;
 colormaprange *newranges;
 int numnewranges;
 colormaprange *oldrange;
 int oldrangen;
 int newrow;


 assert(from > MAX_SIMPLE_CHR);
 assert(from < to);





 newranges = (colormaprange *)
  MALLOC((cm->numcmranges * 2 + 1) * sizeof(colormaprange));
 if (newranges == ((void*)0))
 {
  CERR(REG_ESPACE);
  return;
 }
 numnewranges = 0;


 for (oldrange = cm->cmranges, oldrangen = 0;
   oldrangen < cm->numcmranges;
   oldrange++, oldrangen++)
 {
  if (oldrange->cmax >= from)
   break;
  newranges[numnewranges++] = *oldrange;
 }






 while (oldrangen < cm->numcmranges && oldrange->cmin <= to)
 {
  if (from < oldrange->cmin)
  {

   newranges[numnewranges].cmin = from;
   newranges[numnewranges].cmax = oldrange->cmin - 1;

   newranges[numnewranges].rownum = newrow = newhicolorrow(cm, 0);
   numnewranges++;

   subcoloronerow(v, newrow, lp, rp, lastsubcolor);

   from = oldrange->cmin;
  }

  if (from <= oldrange->cmin && to >= oldrange->cmax)
  {

   newranges[numnewranges++] = *oldrange;
   newrow = oldrange->rownum;
   from = oldrange->cmax + 1;
  }
  else
  {

   if (from > oldrange->cmin)
   {

    newranges[numnewranges].cmin = oldrange->cmin;
    newranges[numnewranges].cmax = from - 1;
    newranges[numnewranges].rownum = oldrange->rownum;
    numnewranges++;
   }

   newranges[numnewranges].cmin = from;
   newranges[numnewranges].cmax =
    (to < oldrange->cmax) ? to : oldrange->cmax;
   newranges[numnewranges].rownum = newrow =
    newhicolorrow(cm, oldrange->rownum);
   numnewranges++;
   if (to < oldrange->cmax)
   {

    newranges[numnewranges].cmin = to + 1;
    newranges[numnewranges].cmax = oldrange->cmax;

    newranges[numnewranges].rownum =
     (from > oldrange->cmin) ? newhicolorrow(cm, oldrange->rownum) :
     oldrange->rownum;
    numnewranges++;
   }
   from = oldrange->cmax + 1;
  }

  subcoloronerow(v, newrow, lp, rp, lastsubcolor);

  oldrange++, oldrangen++;
 }

 if (from <= to)
 {

  newranges[numnewranges].cmin = from;
  newranges[numnewranges].cmax = to;

  newranges[numnewranges].rownum = newrow = newhicolorrow(cm, 0);
  numnewranges++;

  subcoloronerow(v, newrow, lp, rp, lastsubcolor);
 }


 for (; oldrangen < cm->numcmranges; oldrange++, oldrangen++)
 {
  newranges[numnewranges++] = *oldrange;
 }


 assert(numnewranges <= (cm->numcmranges * 2 + 1));


 if (cm->cmranges != ((void*)0))
  FREE(cm->cmranges);
 cm->cmranges = newranges;
 cm->numcmranges = numnewranges;
}
