
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {struct cvec* cv; } ;
struct cvec {int chrspace; int rangespace; } ;


 int ERR (int ) ;
 int REG_ESPACE ;
 struct cvec* clearcvec (struct cvec*) ;
 int freecvec (struct cvec*) ;
 struct cvec* newcvec (int,int) ;

__attribute__((used)) static struct cvec *
getcvec(struct vars *v,
  int nchrs,
  int nranges)
{

 if (v->cv != ((void*)0) && nchrs <= v->cv->chrspace &&
  nranges <= v->cv->rangespace)
  return clearcvec(v->cv);


 if (v->cv != ((void*)0))
  freecvec(v->cv);
 v->cv = newcvec(nchrs, nranges);
 if (v->cv == ((void*)0))
  ERR(REG_ESPACE);

 return v->cv;
}
