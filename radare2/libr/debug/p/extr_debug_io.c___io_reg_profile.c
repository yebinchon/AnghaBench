
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* (* system ) (int ,char*) ;int io; } ;
struct TYPE_5__ {int anal; TYPE_1__ iob; } ;
typedef TYPE_2__ RDebug ;


 char* r_anal_get_reg_profile (int ) ;
 char* r_cons_get_buffer () ;
 int r_cons_pop () ;
 int r_cons_push () ;
 char* strdup (char const*) ;
 char* stub1 (int ,char*) ;

__attribute__((used)) static char *__io_reg_profile(RDebug *dbg) {
 r_cons_push ();
 char *drp = dbg->iob.system (dbg->iob.io, "drp");
 if (drp) {
  return drp;
 }
 const char *buf = r_cons_get_buffer ();
 if (buf && *buf) {
  char *ret = strdup (buf);
  r_cons_pop ();
  return ret;
 }
 return r_anal_get_reg_profile (dbg->anal);
}
