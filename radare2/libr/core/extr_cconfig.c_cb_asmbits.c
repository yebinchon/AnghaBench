
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_20__ {int bits; int * cur; } ;
struct TYPE_19__ {int bits; int bp; int reg; TYPE_3__* h; } ;
struct TYPE_18__ {int i_value; } ;
struct TYPE_17__ {int config; TYPE_10__* anal; TYPE_6__* dbg; TYPE_1__* print; TYPE_9__* assembler; } ;
struct TYPE_16__ {char* (* reg_profile ) (TYPE_6__*) ;} ;
struct TYPE_15__ {int arch; } ;
struct TYPE_14__ {int bits; } ;
struct TYPE_13__ {int bits; int syscall; int reg; TYPE_2__* cur; } ;
typedef TYPE_4__ RCore ;
typedef TYPE_5__ RConfigNode ;
typedef int RAsmPlugin ;


 int R_ANAL_ARCHINFO_ALIGN ;
 int R_SYS_BITS_32 ;
 int R_SYS_BITS_64 ;
 int __setsegoff (int ,char const*,int) ;
 int eprintf (char*,...) ;
 int free (char*) ;
 int r_anal_archinfo (TYPE_10__*,int ) ;
 int r_anal_set_bits (TYPE_10__*,int) ;
 int r_anal_set_reg_profile (TYPE_10__*) ;
 int r_asm_set_bits (TYPE_9__*,int) ;
 int r_bp_size (int ) ;
 int r_bp_use (int ,char const*,int) ;
 char* r_config_get (int ,char*) ;
 int r_config_get_i (int ,char*) ;
 int r_config_set_i (int ,char*,int) ;
 int r_core_anal_cc_init (TYPE_4__*) ;
 int r_debug_set_arch (TYPE_6__*,int ,int) ;
 int r_reg_set_profile_string (int ,char*) ;
 int r_syscall_setup (int ,char const*,int,char const*,char const*) ;
 char* stub1 (TYPE_6__*) ;

__attribute__((used)) static bool cb_asmbits(void *user, void *data) {
 RCore *core = (RCore *) user;
 RConfigNode *node = (RConfigNode *) data;
 int ret = 0;
 if (!core) {
  eprintf ("user can't be NULL\n");
  return 0;
 }

 int bits = node->i_value;







 if (bits > 0) {
  ret = r_asm_set_bits (core->assembler, bits);
  if (!ret) {
   RAsmPlugin *h = core->assembler->cur;
   if (!h) {
    eprintf ("e asm.bits: Cannot set value, no plugins defined yet\n");
    ret = 1;
   }

  }
  if (!r_anal_set_bits (core->anal, bits)) {
   eprintf ("asm.arch: Cannot setup '%d' bits analysis engine\n", bits);
  }
  core->print->bits = bits;
 }
 if (core->dbg && core->anal && core->anal->cur) {
  r_debug_set_arch (core->dbg, core->anal->cur->arch, bits);
  bool load_from_debug = r_config_get_i (core->config, "cfg.debug");
  if (load_from_debug) {
   if (core->dbg->h && core->dbg->h->reg_profile) {
    char *rp = core->dbg->h->reg_profile (core->dbg);
    r_reg_set_profile_string (core->dbg->reg, rp);
    r_reg_set_profile_string (core->anal->reg, rp);
    free (rp);
   }
  } else {
   (void)r_anal_set_reg_profile (core->anal);
  }
 }
 r_core_anal_cc_init (core);
 const char *asmos = r_config_get (core->config, "asm.os");
 const char *asmarch = r_config_get (core->config, "asm.arch");
 const char *asmcpu = r_config_get (core->config, "asm.cpu");
 if (core->anal) {
  if (!r_syscall_setup (core->anal->syscall, asmarch, bits, asmcpu, asmos)) {


  }
  __setsegoff (core->config, asmarch, core->anal->bits);
  if (core->dbg) {
   r_bp_use (core->dbg->bp, asmarch, core->anal->bits);
   r_config_set_i (core->config, "dbg.bpsize", r_bp_size (core->dbg->bp));
  }
 }

 {
  int v = r_anal_archinfo (core->anal, R_ANAL_ARCHINFO_ALIGN);
  r_config_set_i (core->config, "asm.pcalign", (v != -1)? v: 0);
 }
 return ret;
}
