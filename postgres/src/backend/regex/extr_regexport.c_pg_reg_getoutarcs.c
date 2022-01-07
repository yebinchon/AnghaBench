
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cnfa {int nstates; } ;
struct guts {struct cnfa search; } ;
struct TYPE_3__ {scalar_t__ re_magic; scalar_t__ re_guts; } ;
typedef TYPE_1__ regex_t ;
typedef int regex_arc_t ;


 scalar_t__ REMAGIC ;
 int assert (int) ;
 int traverse_lacons (struct cnfa*,int,int*,int *,int) ;

void
pg_reg_getoutarcs(const regex_t *regex, int st,
      regex_arc_t *arcs, int arcs_len)
{
 struct cnfa *cnfa;
 int arcs_count;

 assert(regex != ((void*)0) && regex->re_magic == REMAGIC);
 cnfa = &((struct guts *) regex->re_guts)->search;

 if (st < 0 || st >= cnfa->nstates || arcs_len <= 0)
  return;
 arcs_count = 0;
 traverse_lacons(cnfa, st, &arcs_count, arcs, arcs_len);
}
