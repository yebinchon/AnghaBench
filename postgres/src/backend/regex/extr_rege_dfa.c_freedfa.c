
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfa {int * mallocarea; int * incarea; int * outsarea; int * statesarea; int * ssets; scalar_t__ cptsmalloced; } ;


 int FREE (int *) ;

__attribute__((used)) static void
freedfa(struct dfa *d)
{
 if (d->cptsmalloced)
 {
  if (d->ssets != ((void*)0))
   FREE(d->ssets);
  if (d->statesarea != ((void*)0))
   FREE(d->statesarea);
  if (d->outsarea != ((void*)0))
   FREE(d->outsarea);
  if (d->incarea != ((void*)0))
   FREE(d->incarea);
 }

 if (d->mallocarea != ((void*)0))
  FREE(d->mallocarea);
}
