
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int gdbr_lock; } ;
typedef TYPE_1__ libgdbr_t ;


 scalar_t__ _isbreaked ;
 int gdbr_break_process ;
 int r_cons_break_push (int ,TYPE_1__*) ;
 void* r_cons_sleep_begin () ;
 int r_cons_sleep_end (void*) ;
 int r_th_lock_enter (int ) ;

bool gdbr_lock_enter(libgdbr_t *g) {
 r_cons_break_push (gdbr_break_process, g);
 void *bed = r_cons_sleep_begin ();
 r_th_lock_enter (g->gdbr_lock);
 r_cons_sleep_end (bed);
 if (_isbreaked) {
  return 0;
 }
 return 1;
}
