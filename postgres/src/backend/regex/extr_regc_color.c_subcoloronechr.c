
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vars {int nfa; struct colormap* cm; } ;
struct state {int dummy; } ;
struct colormap {int numcmranges; TYPE_1__* cmranges; } ;
struct TYPE_3__ {scalar_t__ cmax; scalar_t__ cmin; int rownum; } ;
typedef TYPE_1__ colormaprange ;
typedef scalar_t__ color ;
typedef scalar_t__ chr ;


 int CERR (int ) ;
 int FREE (TYPE_1__*) ;
 scalar_t__ MALLOC (int) ;
 scalar_t__ MAX_SIMPLE_CHR ;
 int NOERR () ;
 int PLAIN ;
 int REG_ESPACE ;
 int assert (int) ;
 int newarc (int ,int ,scalar_t__,struct state*,struct state*) ;
 void* newhicolorrow (struct colormap*,int) ;
 scalar_t__ subcolor (struct colormap*,scalar_t__) ;
 int subcoloronerow (struct vars*,int,struct state*,struct state*,scalar_t__*) ;

__attribute__((used)) static void
subcoloronechr(struct vars *v,
      chr ch,
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


 if (ch <= MAX_SIMPLE_CHR)
 {
  color sco = subcolor(cm, ch);

  NOERR();
  if (sco != *lastsubcolor)
  {
   newarc(v->nfa, PLAIN, sco, lp, rp);
   *lastsubcolor = sco;
  }
  return;
 }





 newranges = (colormaprange *)
  MALLOC((cm->numcmranges + 2) * sizeof(colormaprange));
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
  if (oldrange->cmax >= ch)
   break;
  newranges[numnewranges++] = *oldrange;
 }


 if (oldrangen >= cm->numcmranges || oldrange->cmin > ch)
 {

  newranges[numnewranges].cmin = ch;
  newranges[numnewranges].cmax = ch;

  newranges[numnewranges].rownum = newrow = newhicolorrow(cm, 0);
  numnewranges++;
 }
 else if (oldrange->cmin == oldrange->cmax)
 {

  newranges[numnewranges++] = *oldrange;
  newrow = oldrange->rownum;

  oldrange++, oldrangen++;
 }
 else
 {

  if (ch > oldrange->cmin)
  {

   newranges[numnewranges].cmin = oldrange->cmin;
   newranges[numnewranges].cmax = ch - 1;
   newranges[numnewranges].rownum = oldrange->rownum;
   numnewranges++;
  }

  newranges[numnewranges].cmin = ch;
  newranges[numnewranges].cmax = ch;
  newranges[numnewranges].rownum = newrow =
   newhicolorrow(cm, oldrange->rownum);
  numnewranges++;
  if (ch < oldrange->cmax)
  {

   newranges[numnewranges].cmin = ch + 1;
   newranges[numnewranges].cmax = oldrange->cmax;

   newranges[numnewranges].rownum =
    (ch > oldrange->cmin) ? newhicolorrow(cm, oldrange->rownum) :
    oldrange->rownum;
   numnewranges++;
  }

  oldrange++, oldrangen++;
 }


 subcoloronerow(v, newrow, lp, rp, lastsubcolor);


 for (; oldrangen < cm->numcmranges; oldrange++, oldrangen++)
 {
  newranges[numnewranges++] = *oldrange;
 }


 assert(numnewranges <= (cm->numcmranges + 2));


 if (cm->cmranges != ((void*)0))
  FREE(cm->cmranges);
 cm->cmranges = newranges;
 cm->numcmranges = numnewranges;
}
