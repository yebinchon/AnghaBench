
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int internal; void* data; } ;
struct TYPE_10__ {TYPE_1__* dbg; int flags; } ;
struct TYPE_9__ {int offset; } ;
struct TYPE_8__ {int bp; } ;
typedef TYPE_2__ RFlagItem ;
typedef TYPE_3__ RCore ;
typedef TYPE_4__ RBreakpointItem ;


 int R_BP_PROT_EXEC ;
 int eprintf (char*,char const*) ;
 TYPE_4__* r_bp_add_sw (int ,int ,int,int ) ;
 TYPE_2__* r_flag_get (int ,char const*) ;
 void* r_str_newf (char*,char const*,char const*) ;

__attribute__((used)) static bool setbpint(RCore *r, const char *mode, const char *sym) {
 RBreakpointItem *bp;
 RFlagItem *fi = r_flag_get (r->flags, sym);
 if (!fi) {
  return 0;
 }
 bp = r_bp_add_sw (r->dbg->bp, fi->offset, 1, R_BP_PROT_EXEC);
 if (bp) {
  bp->internal = 1;

  bp->data = r_str_newf ("?e %s: %s", mode, sym);



  return 1;
 }
 eprintf ("Cannot set breakpoint at %s\n", sym);
 return 0;
}
