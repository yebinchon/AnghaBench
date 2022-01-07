
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct colormap {size_t free; size_t ncds; int max; struct colordesc* cd; struct colordesc* cdspace; } ;
struct colordesc {size_t sub; scalar_t__ flags; int firstchr; int * arcs; scalar_t__ nuchrs; scalar_t__ nschrs; } ;
typedef int color ;


 int CERR (int ) ;
 int CHR_MIN ;
 scalar_t__ CISERR () ;
 int COLORLESS ;
 scalar_t__ MALLOC (size_t) ;
 int MAX_COLOR ;
 size_t NOSUB ;
 scalar_t__ REALLOC (struct colordesc*,size_t) ;
 int REG_ECOLORS ;
 int REG_ESPACE ;
 int UNUSEDCOLOR (struct colordesc*) ;
 int VS (struct colordesc*) ;
 int assert (int) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static color
newcolor(struct colormap *cm)
{
 struct colordesc *cd;
 size_t n;

 if (CISERR())
  return COLORLESS;

 if (cm->free != 0)
 {
  assert(cm->free > 0);
  assert((size_t) cm->free < cm->ncds);
  cd = &cm->cd[cm->free];
  assert(UNUSEDCOLOR(cd));
  assert(cd->arcs == ((void*)0));
  cm->free = cd->sub;
 }
 else if (cm->max < cm->ncds - 1)
 {
  cm->max++;
  cd = &cm->cd[cm->max];
 }
 else
 {

  struct colordesc *newCd;

  if (cm->max == MAX_COLOR)
  {
   CERR(REG_ECOLORS);
   return COLORLESS;
  }

  n = cm->ncds * 2;
  if (n > MAX_COLOR + 1)
   n = MAX_COLOR + 1;
  if (cm->cd == cm->cdspace)
  {
   newCd = (struct colordesc *) MALLOC(n * sizeof(struct colordesc));
   if (newCd != ((void*)0))
    memcpy(VS(newCd), VS(cm->cdspace), cm->ncds *
        sizeof(struct colordesc));
  }
  else
   newCd = (struct colordesc *)
    REALLOC(cm->cd, n * sizeof(struct colordesc));
  if (newCd == ((void*)0))
  {
   CERR(REG_ESPACE);
   return COLORLESS;
  }
  cm->cd = newCd;
  cm->ncds = n;
  assert(cm->max < cm->ncds - 1);
  cm->max++;
  cd = &cm->cd[cm->max];
 }

 cd->nschrs = 0;
 cd->nuchrs = 0;
 cd->sub = NOSUB;
 cd->arcs = ((void*)0);
 cd->firstchr = CHR_MIN;
 cd->flags = 0;

 return (color) (cd - cm->cd);
}
