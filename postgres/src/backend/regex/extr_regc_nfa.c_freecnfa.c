
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnfa {scalar_t__ nstates; int arcs; int states; int stflags; } ;


 int FREE (int ) ;
 int assert (int) ;

__attribute__((used)) static void
freecnfa(struct cnfa *cnfa)
{
 assert(cnfa->nstates != 0);
 cnfa->nstates = 0;
 FREE(cnfa->stflags);
 FREE(cnfa->states);
 FREE(cnfa->arcs);
}
