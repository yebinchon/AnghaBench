
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;
typedef int RConfigHold ;


 int r_config_hold_free (int *) ;
 int r_config_hold_restore (int *) ;

__attribute__((used)) static void r_anal_emul_restore(RCore *core, RConfigHold *hc) {
 r_config_hold_restore (hc);
 r_config_hold_free (hc);
}
