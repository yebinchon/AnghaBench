
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cnfa {int* bos; } ;
struct guts {struct cnfa search; } ;
struct TYPE_3__ {scalar_t__ re_magic; scalar_t__ re_guts; } ;
typedef TYPE_1__ regex_t ;


 scalar_t__ REMAGIC ;
 int assert (int) ;

int
pg_reg_colorisbegin(const regex_t *regex, int co)
{
 struct cnfa *cnfa;

 assert(regex != ((void*)0) && regex->re_magic == REMAGIC);
 cnfa = &((struct guts *) regex->re_guts)->search;

 if (co == cnfa->bos[0] || co == cnfa->bos[1])
  return 1;
 else
  return 0;
}
