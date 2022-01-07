
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int err; } ;
struct cvec {scalar_t__ nchrs; int * chrs; } ;
typedef int chr ;


 int element (struct vars*,int const*,int const*) ;
 struct cvec* range (struct vars*,int ,int ,int ) ;

__attribute__((used)) static chr
chrnamed(struct vars *v,
   const chr *startp,
   const chr *endp,
   chr lastresort)
{
 chr c;
 int errsave;
 int e;
 struct cvec *cv;

 errsave = v->err;
 v->err = 0;
 c = element(v, startp, endp);
 e = v->err;
 v->err = errsave;

 if (e != 0)
  return lastresort;

 cv = range(v, c, c, 0);
 if (cv->nchrs == 0)
  return lastresort;
 return cv->chrs[0];
}
