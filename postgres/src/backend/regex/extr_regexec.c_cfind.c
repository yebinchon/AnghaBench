
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vars {int err; int * stop; TYPE_3__* details; TYPE_1__* g; int dfa2; int dfa1; } ;
struct dfa {int dummy; } ;
struct colormap {int dummy; } ;
struct cnfa {int dummy; } ;
typedef int chr ;
struct TYPE_5__ {void* rm_eo; void* rm_so; } ;
struct TYPE_6__ {TYPE_2__ rm_extend; } ;
struct TYPE_4__ {int cflags; struct cnfa search; } ;


 scalar_t__ ISERR () ;
 int NOERR () ;
 void* OFF (int *) ;
 int REG_EXPECT ;
 int assert (int ) ;
 int cfindloop (struct vars*,struct cnfa*,struct colormap*,struct dfa*,struct dfa*,int **) ;
 int freedfa (struct dfa*) ;
 struct dfa* newdfa (struct vars*,struct cnfa*,struct colormap*,int *) ;

__attribute__((used)) static int
cfind(struct vars *v,
   struct cnfa *cnfa,
   struct colormap *cm)
{
 struct dfa *s;
 struct dfa *d;
 chr *cold;
 int ret;

 s = newdfa(v, &v->g->search, cm, &v->dfa1);
 NOERR();
 d = newdfa(v, cnfa, cm, &v->dfa2);
 if (ISERR())
 {
  assert(d == ((void*)0));
  freedfa(s);
  return v->err;
 }

 ret = cfindloop(v, cnfa, cm, d, s, &cold);

 freedfa(d);
 freedfa(s);
 NOERR();
 if (v->g->cflags & REG_EXPECT)
 {
  assert(v->details != ((void*)0));
  if (cold != ((void*)0))
   v->details->rm_extend.rm_so = OFF(cold);
  else
   v->details->rm_extend.rm_so = OFF(v->stop);
  v->details->rm_extend.rm_eo = OFF(v->stop);
 }
 return ret;
}
