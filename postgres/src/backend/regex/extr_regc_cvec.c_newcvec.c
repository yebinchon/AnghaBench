
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvec {int chrspace; int rangespace; int * chrs; int * ranges; } ;
typedef int chr ;


 scalar_t__ MALLOC (size_t) ;
 struct cvec* clearcvec (struct cvec*) ;

__attribute__((used)) static struct cvec *
newcvec(int nchrs,
  int nranges)
{
 size_t nc = (size_t) nchrs + (size_t) nranges * 2;
 size_t n = sizeof(struct cvec) + nc * sizeof(chr);
 struct cvec *cv = (struct cvec *) MALLOC(n);

 if (cv == ((void*)0))
  return ((void*)0);
 cv->chrspace = nchrs;
 cv->chrs = (chr *) (((char *) cv) + sizeof(struct cvec));
 cv->ranges = cv->chrs + nchrs;
 cv->rangespace = nranges;
 return clearcvec(cv);
}
