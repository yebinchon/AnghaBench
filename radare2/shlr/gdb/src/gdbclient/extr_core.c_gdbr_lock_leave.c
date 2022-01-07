
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gdbr_lock; } ;
typedef TYPE_1__ libgdbr_t ;


 int r_cons_break_pop () ;
 int r_th_lock_leave (int ) ;

void gdbr_lock_leave(libgdbr_t *g) {
 r_cons_break_pop ();
 r_th_lock_leave (g->gdbr_lock);
}
