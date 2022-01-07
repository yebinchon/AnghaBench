
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int nfa; struct colormap* cm; } ;
struct state {int dummy; } ;
struct cvec {scalar_t__* chrs; int nchrs; scalar_t__* ranges; int nranges; size_t cclasscode; } ;
struct colormap {int* classbits; int hiarraycols; int hiarrayrows; scalar_t__* hicolormap; } ;
typedef scalar_t__ color ;
typedef scalar_t__ chr ;


 scalar_t__ COLORLESS ;
 scalar_t__ MAX_SIMPLE_CHR ;
 int NOERR () ;
 int PLAIN ;
 int newarc (int ,int ,scalar_t__,struct state*,struct state*) ;
 int newhicolorcols (struct colormap*) ;
 scalar_t__ subcolor (struct colormap*,scalar_t__) ;
 scalar_t__ subcolorhi (struct colormap*,scalar_t__*) ;
 int subcoloronechr (struct vars*,scalar_t__,struct state*,struct state*,scalar_t__*) ;
 int subcoloronerange (struct vars*,scalar_t__,scalar_t__,struct state*,struct state*,scalar_t__*) ;

__attribute__((used)) static void
subcolorcvec(struct vars *v,
    struct cvec *cv,
    struct state *lp,
    struct state *rp)
{
 struct colormap *cm = v->cm;
 color lastsubcolor = COLORLESS;
 chr ch,
    from,
    to;
 const chr *p;
 int i;


 for (p = cv->chrs, i = cv->nchrs; i > 0; p++, i--)
 {
  ch = *p;
  subcoloronechr(v, ch, lp, rp, &lastsubcolor);
  NOERR();
 }


 for (p = cv->ranges, i = cv->nranges; i > 0; p += 2, i--)
 {
  from = *p;
  to = *(p + 1);
  if (from <= MAX_SIMPLE_CHR)
  {

   chr lim = (to <= MAX_SIMPLE_CHR) ? to : MAX_SIMPLE_CHR;

   while (from <= lim)
   {
    color sco = subcolor(cm, from);

    NOERR();
    if (sco != lastsubcolor)
    {
     newarc(v->nfa, PLAIN, sco, lp, rp);
     NOERR();
     lastsubcolor = sco;
    }
    from++;
   }
  }

  if (from < to)
   subcoloronerange(v, from, to, lp, rp, &lastsubcolor);
  else if (from == to)
   subcoloronechr(v, from, lp, rp, &lastsubcolor);
  NOERR();
 }


 if (cv->cclasscode >= 0)
 {
  int classbit;
  color *pco;
  int r,
     c;


  if (cm->classbits[cv->cclasscode] == 0)
  {
   cm->classbits[cv->cclasscode] = cm->hiarraycols;
   newhicolorcols(cm);
   NOERR();
  }

  classbit = cm->classbits[cv->cclasscode];
  pco = cm->hicolormap;
  for (r = 0; r < cm->hiarrayrows; r++)
  {
   for (c = 0; c < cm->hiarraycols; c++)
   {
    if (c & classbit)
    {
     color sco = subcolorhi(cm, pco);

     NOERR();

     if (sco != lastsubcolor)
     {
      newarc(v->nfa, PLAIN, sco, lp, rp);
      NOERR();
      lastsubcolor = sco;
     }
    }
    pco++;
   }
  }
 }
}
