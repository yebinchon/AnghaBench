
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ map; } ;
typedef TYPE_1__ tms320_dasm_t ;
struct TYPE_8__ {int byte; } ;


 int ARRAY_SIZE (TYPE_4__*) ;
 int TMS320_F_CPU_C55X ;
 TYPE_4__* c55x_list ;
 int ht_up_insert (scalar_t__,int ,TYPE_4__*) ;
 scalar_t__ ht_up_new0 () ;
 int tms320_f_set_cpu (TYPE_1__*,int ) ;

int tms320_dasm_init(tms320_dasm_t * dasm) {
 int i = 0;

 if (dasm->map) {

  return 0;
 }

 dasm->map = ht_up_new0 ();
 if (!dasm->map) {
  return 0;
 }
 for (i = 0; i < ARRAY_SIZE(c55x_list); i++) {
  ht_up_insert (dasm->map, c55x_list[i].byte, &c55x_list[i]);
 }

 tms320_f_set_cpu(dasm, TMS320_F_CPU_C55X);

 return 0;
}
