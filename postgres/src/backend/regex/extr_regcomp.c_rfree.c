
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vars {int dummy; } ;
struct guts {int search; int nlacons; int * lacons; int * tree; int cmap; scalar_t__ magic; } ;
struct TYPE_3__ {scalar_t__ re_magic; int * re_fns; int * re_guts; } ;
typedef TYPE_1__ regex_t ;


 int FREE (struct guts*) ;
 int NULLCNFA (int ) ;
 scalar_t__ REMAGIC ;
 int freecm (int *) ;
 int freecnfa (int *) ;
 int freelacons (int *,int ) ;
 int freesubre (struct vars*,int *) ;

__attribute__((used)) static void
rfree(regex_t *re)
{
 struct guts *g;

 if (re == ((void*)0) || re->re_magic != REMAGIC)
  return;

 re->re_magic = 0;
 g = (struct guts *) re->re_guts;
 re->re_guts = ((void*)0);
 re->re_fns = ((void*)0);
 if (g != ((void*)0))
 {
  g->magic = 0;
  freecm(&g->cmap);
  if (g->tree != ((void*)0))
   freesubre((struct vars *) ((void*)0), g->tree);
  if (g->lacons != ((void*)0))
   freelacons(g->lacons, g->nlacons);
  if (!NULLCNFA(g->search))
   freecnfa(&g->search);
  FREE(g);
 }
}
