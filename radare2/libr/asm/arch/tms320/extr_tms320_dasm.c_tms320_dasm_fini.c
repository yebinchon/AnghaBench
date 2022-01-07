
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ map; } ;
typedef TYPE_1__ tms320_dasm_t ;


 int ht_up_free (scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;

int tms320_dasm_fini(tms320_dasm_t * dasm) {
 if (dasm) {
  if (dasm->map) {
   ht_up_free (dasm->map);
  }

  memset (dasm, 0, sizeof (tms320_dasm_t));
 }
 return 0;
}
