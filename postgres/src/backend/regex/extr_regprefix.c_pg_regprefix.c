
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct guts {int info; int cmap; TYPE_1__* tree; } ;
struct cnfa {int nstates; } ;
struct TYPE_5__ {scalar_t__ re_magic; int re_csize; scalar_t__ re_guts; int re_collation; } ;
typedef TYPE_2__ regex_t ;
typedef int chr ;
struct TYPE_4__ {struct cnfa cnfa; } ;


 int FREE (int *) ;
 scalar_t__ MALLOC (int) ;
 int REG_ESPACE ;
 int REG_EXACT ;
 int REG_INVARG ;
 int REG_MIXED ;
 int REG_NOMATCH ;
 int REG_PREFIX ;
 int REG_UIMPOSSIBLE ;
 scalar_t__ REMAGIC ;
 int assert (int) ;
 int findprefix (struct cnfa*,int *,int *,size_t*) ;
 int pg_set_regex_collation (int ) ;

int
pg_regprefix(regex_t *re,
    chr **string,
    size_t *slength)
{
 struct guts *g;
 struct cnfa *cnfa;
 int st;


 if (string == ((void*)0) || slength == ((void*)0))
  return REG_INVARG;
 *string = ((void*)0);
 *slength = 0;
 if (re == ((void*)0) || re->re_magic != REMAGIC)
  return REG_INVARG;
 if (re->re_csize != sizeof(chr))
  return REG_MIXED;


 pg_set_regex_collation(re->re_collation);


 g = (struct guts *) re->re_guts;
 if (g->info & REG_UIMPOSSIBLE)
  return REG_NOMATCH;






 assert(g->tree != ((void*)0));
 cnfa = &g->tree->cnfa;






 *string = (chr *) MALLOC(cnfa->nstates * sizeof(chr));
 if (*string == ((void*)0))
  return REG_ESPACE;


 st = findprefix(cnfa, &g->cmap, *string, slength);

 assert(*slength <= cnfa->nstates);


 if (st != REG_PREFIX && st != REG_EXACT)
 {
  FREE(*string);
  *string = ((void*)0);
  *slength = 0;
 }

 return st;
}
