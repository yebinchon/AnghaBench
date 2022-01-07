
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvec {int cclasscode; scalar_t__ nranges; scalar_t__ nchrs; } ;


 int assert (int ) ;

__attribute__((used)) static struct cvec *
clearcvec(struct cvec *cv)
{
 assert(cv != ((void*)0));
 cv->nchrs = 0;
 cv->nranges = 0;
 cv->cclasscode = -1;
 return cv;
}
