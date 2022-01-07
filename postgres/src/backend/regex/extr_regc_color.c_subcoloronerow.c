
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int nfa; struct colormap* cm; } ;
struct state {int dummy; } ;
struct colormap {scalar_t__* hicolormap; int hiarraycols; } ;
typedef scalar_t__ color ;


 int NOERR () ;
 int PLAIN ;
 int newarc (int ,int ,scalar_t__,struct state*,struct state*) ;
 scalar_t__ subcolorhi (struct colormap*,scalar_t__*) ;

__attribute__((used)) static void
subcoloronerow(struct vars *v,
      int rownum,
      struct state *lp,
      struct state *rp,
      color *lastsubcolor)
{
 struct colormap *cm = v->cm;
 color *pco;
 int i;


 pco = &cm->hicolormap[rownum * cm->hiarraycols];
 for (i = 0; i < cm->hiarraycols; pco++, i++)
 {
  color sco = subcolorhi(cm, pco);

  NOERR();

  if (sco != *lastsubcolor)
  {
   newarc(v->nfa, PLAIN, sco, lp, rp);
   NOERR();
   *lastsubcolor = sco;
  }
 }
}
