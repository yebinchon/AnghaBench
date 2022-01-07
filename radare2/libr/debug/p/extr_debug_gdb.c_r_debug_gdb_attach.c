
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* io; } ;
struct TYPE_16__ {int swstep; int arch; TYPE_4__* anal; TYPE_2__ iob; } ;
struct TYPE_15__ {TYPE_5__* data; TYPE_3__* plugin; } ;
struct TYPE_14__ {int desc; } ;
struct TYPE_13__ {int bits; } ;
struct TYPE_12__ {scalar_t__ name; } ;
struct TYPE_10__ {TYPE_6__* desc; } ;
typedef TYPE_5__ RIOGdb ;
typedef TYPE_6__ RIODesc ;
typedef TYPE_7__ RDebug ;
 void* UNKNOWN ;
 int * desc ;
 int eprintf (char*,...) ;
 int gdbr_set_architecture (int *,char*,int) ;
 TYPE_5__** origriogdb ;
 int r_sys_arch_id (int ) ;
 int strcmp (char*,scalar_t__) ;
 void* support_hw_bp ;
 void* support_sw_bp ;

__attribute__((used)) static int r_debug_gdb_attach(RDebug *dbg, int pid) {
 RIODesc *d = dbg->iob.io->desc;

 dbg->swstep = 0;

 if (d && d->plugin && d->plugin->name && d->data) {
  if (!strcmp ("gdb", d->plugin->name)) {
   RIOGdb *g = d->data;
   origriogdb = (RIOGdb **)&d->data;
   support_sw_bp = UNKNOWN;
   support_hw_bp = UNKNOWN;
   int arch = r_sys_arch_id (dbg->arch);
   int bits = dbg->anal->bits;
   desc = &g->desc;
   switch (arch) {
   case 128:
    if (bits == 16 || bits == 32) {
     gdbr_set_architecture (desc, "x86", 32);
    } else if (bits == 64) {
     gdbr_set_architecture (desc, "x86", 64);
    } else {
     eprintf ("Not supported register %s %d profile\n", dbg->arch, bits);
     return 0;
    }
    break;
   case 130:

    break;
   case 134:
    if (bits == 16 || bits == 32) {
     gdbr_set_architecture (desc, "arm", 32);
    } else if (bits == 64) {
     gdbr_set_architecture (desc, "arm", 64);
    } else {
     eprintf ("Not supported register %s %d profile\n", dbg->arch, bits);
     return 0;
    }
    break;
   case 132:
    if (bits == 32) {
     gdbr_set_architecture(desc, "lm32", 32);
    } else {
     eprintf ("Not supported register %s %d profile\n", dbg->arch, bits);
     return 0;
    }
    break;
   case 131:
    if (bits == 32 || bits == 64) {
     gdbr_set_architecture (desc, "mips", bits);
    } else {
     eprintf ("Not supported register %s %d profile\n", dbg->arch, bits);
     return 0;
    }
    break;
   case 133:
    gdbr_set_architecture (desc, "avr", 16);
    break;
   case 129:
    gdbr_set_architecture (desc, "v850", 32);
    break;
   }
  } else {
   eprintf ("ERROR: Underlying IO descriptor is not a GDB one..\n");
  }
 }
 return 1;
}
