
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvec {scalar_t__ nchrs; scalar_t__ chrspace; int * chrs; } ;
typedef int chr ;


 int assert (int) ;

__attribute__((used)) static void
addchr(struct cvec *cv,
    chr c)
{
 assert(cv->nchrs < cv->chrspace);
 cv->chrs[cv->nchrs++] = c;
}
