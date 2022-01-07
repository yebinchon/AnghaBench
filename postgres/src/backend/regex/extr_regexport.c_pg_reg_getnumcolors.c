
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct colormap {int max; } ;
struct guts {struct colormap cmap; } ;
struct TYPE_3__ {scalar_t__ re_magic; scalar_t__ re_guts; } ;
typedef TYPE_1__ regex_t ;


 scalar_t__ REMAGIC ;
 int assert (int) ;

int
pg_reg_getnumcolors(const regex_t *regex)
{
 struct colormap *cm;

 assert(regex != ((void*)0) && regex->re_magic == REMAGIC);
 cm = &((struct guts *) regex->re_guts)->cmap;

 return cm->max + 1;
}
