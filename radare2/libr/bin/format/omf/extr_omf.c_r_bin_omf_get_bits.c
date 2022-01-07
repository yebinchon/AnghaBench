
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ut32 ;
struct TYPE_5__ {scalar_t__ nb_section; TYPE_1__** sections; } ;
typedef TYPE_2__ r_bin_omf_obj ;
struct TYPE_4__ {int bits; } ;



int r_bin_omf_get_bits(r_bin_omf_obj *obj) {
 ut32 ct_sec = 0;
 if (!obj) {
  return 32;
 }


 while (ct_sec < obj->nb_section) {
  if (obj->sections[ct_sec++]->bits == 32) {
   return 32;
  }
 }
 return 16;
}
