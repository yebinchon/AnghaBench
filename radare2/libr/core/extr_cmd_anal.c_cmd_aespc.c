
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_16__ {int * esil; } ;
struct TYPE_15__ {int reg; } ;
struct TYPE_14__ {int member_0; } ;
struct TYPE_13__ {int const blocksize; int offset; TYPE_4__* dbg; TYPE_1__* search; TYPE_8__* anal; int io; int config; } ;
struct TYPE_12__ {int align; } ;
typedef int RRegItem ;
typedef TYPE_2__ RCore ;
typedef TYPE_3__ RAnalOp ;
typedef int RAnalEsil ;


 int R_ANAL_ARCHINFO_MIN_OP_SIZE ;
 int R_ANAL_OP_MASK_BASIC ;
 int R_ANAL_OP_MASK_HINT ;
 void* R_MAX (int,int const) ;
 int R_REG_NAME_PC ;
 int eprintf (char*,int) ;
 int free (int *) ;
 int * malloc (int) ;
 int r_anal_archinfo (TYPE_8__*,int ) ;
 int * r_anal_esil_new (int,int,unsigned int) ;
 int r_anal_op (TYPE_8__*,TYPE_3__*,int,int *,int,int) ;
 int r_anal_op_fini (TYPE_3__*) ;
 void* r_config_get_i (int ,char*) ;
 scalar_t__ r_cons_is_breaked () ;
 int r_core_esil_step (TYPE_2__*,int,int *,int *,int) ;
 int r_core_seek (TYPE_2__*,int,int) ;
 int r_debug_reg_get (TYPE_4__*,char const*) ;
 int r_io_read_at (int ,int,int *,int) ;
 int * r_reg_get (int ,char const*,int) ;
 char* r_reg_get_name (int ,int ) ;
 int r_reg_set_value (int ,int *,int) ;

__attribute__((used)) static void cmd_aespc(RCore *core, ut64 addr, int off) {
 RAnalEsil *esil = core->anal->esil;
 int i, j = 0;
 int instr_size = 0;
 ut8 *buf;
 RAnalOp aop = {0};
 int ret , bsize = R_MAX (64, core->blocksize);
 const int mininstrsz = r_anal_archinfo (core->anal, R_ANAL_ARCHINFO_MIN_OP_SIZE);
 const int minopcode = R_MAX (1, mininstrsz);
 const char *pc = r_reg_get_name (core->dbg->reg, R_REG_NAME_PC);
 RRegItem *r = r_reg_get (core->dbg->reg, pc, -1);
 int stacksize = r_config_get_i (core->config, "esil.stack.depth");
 int iotrap = r_config_get_i (core->config, "esil.iotrap");
 unsigned int addrsize = r_config_get_i (core->config, "esil.addr.size");

 if (!esil) {
  if (!(esil = r_anal_esil_new (stacksize, iotrap, addrsize))) {
   return;
  }
 }
 buf = malloc (bsize);
 if (!buf) {
  eprintf ("Cannot allocate %d byte(s)\n", bsize);
  free (buf);
  return;
 }
 if (addr == -1) {
  addr = r_debug_reg_get (core->dbg, pc);
 }
 ut64 curpc = addr;
 ut64 oldoff = core->offset;
 for (i = 0, j = 0; j < off ; i++, j++) {
  if (r_cons_is_breaked ()) {
   break;
  }
  if (i >= (bsize - 32)) {
   i = 0;
  }
  if (!i) {
   r_io_read_at (core->io, addr, buf, bsize);
  }
  ret = r_anal_op (core->anal, &aop, addr, buf + i, bsize - i, R_ANAL_OP_MASK_BASIC | R_ANAL_OP_MASK_HINT);
  instr_size += ret;
  int inc = (core->search->align > 0)? core->search->align - 1: ret - 1;
  if (inc < 0) {
   inc = minopcode;
  }
  i += inc;
  addr += inc;
  r_anal_op_fini (&aop);
 }
 r_reg_set_value (core->dbg->reg, r, curpc);
 r_core_esil_step (core, curpc + instr_size, ((void*)0), ((void*)0), 0);
 r_core_seek (core, oldoff, 1);
}
