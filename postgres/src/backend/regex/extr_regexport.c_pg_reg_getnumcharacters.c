
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct colormap {int max; TYPE_1__* cd; } ;
struct guts {struct colormap cmap; } ;
struct TYPE_5__ {scalar_t__ re_magic; scalar_t__ re_guts; } ;
typedef TYPE_2__ regex_t ;
struct TYPE_4__ {int flags; scalar_t__ nuchrs; int nschrs; } ;


 int PSEUDO ;
 scalar_t__ REMAGIC ;
 int assert (int) ;

int
pg_reg_getnumcharacters(const regex_t *regex, int co)
{
 struct colormap *cm;

 assert(regex != ((void*)0) && regex->re_magic == REMAGIC);
 cm = &((struct guts *) regex->re_guts)->cmap;

 if (co <= 0 || co > cm->max)
  return -1;
 if (cm->cd[co].flags & PSEUDO)
  return -1;
 if (cm->cd[co].nuchrs != 0)
  return -1;


 return cm->cd[co].nschrs;
}
