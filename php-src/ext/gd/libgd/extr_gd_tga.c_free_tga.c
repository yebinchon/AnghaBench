
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* bitmap; struct TYPE_4__* ident; } ;
typedef TYPE_1__ oTga ;


 int gdFree (TYPE_1__*) ;

void free_tga(oTga * tga)
{
 if (tga) {
  if (tga->ident)
   gdFree(tga->ident);
  if (tga->bitmap)
   gdFree(tga->bitmap);
  gdFree(tga);
 }
}
