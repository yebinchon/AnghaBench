
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int cflags; } ;
struct state {int dummy; } ;
typedef int color ;
typedef int chr ;


 int COLORLESS ;
 int REG_ICASE ;
 int allcases (struct vars*,int ) ;
 int subcolorcvec (struct vars*,int ,struct state*,struct state*) ;
 int subcoloronechr (struct vars*,int ,struct state*,struct state*,int *) ;

__attribute__((used)) static void
onechr(struct vars *v,
    chr c,
    struct state *lp,
    struct state *rp)
{
 if (!(v->cflags & REG_ICASE))
 {
  color lastsubcolor = COLORLESS;

  subcoloronechr(v, c, lp, rp, &lastsubcolor);
  return;
 }


 subcolorcvec(v, allcases(v, c), lp, rp);
}
