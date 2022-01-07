
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_12__ {scalar_t__ core; scalar_t__ (* cfggeti ) (scalar_t__,char*) ;} ;
struct TYPE_14__ {int reg; TYPE_2__ corebind; TYPE_1__* anal; } ;
struct TYPE_13__ {int size; int name; } ;
struct TYPE_11__ {int bits; int reg; } ;
typedef TYPE_3__ RRegItem ;
typedef TYPE_4__ RDebug ;


 int R_DEBUG_REASON_UNKNOWN ;
 int R_REG_NAME_PC ;
 int buf_size ;
 int check_connection (TYPE_4__*) ;
 int desc ;
 int free (int ) ;
 int gdbr_write_reg (int ,int ,char*,int) ;
 int memset (int *,int ,int) ;
 TYPE_3__* r_reg_get (int ,char const*,int ) ;
 int r_reg_get_bytes (int ,int,int*) ;
 char* r_reg_get_name (int ,int ) ;
 int r_reg_get_value (int ,TYPE_3__*) ;
 TYPE_3__* r_reg_next_diff (int ,int,int *,int,TYPE_3__*,int) ;
 int r_swap_ut16 (int ) ;
 int r_swap_ut32 (int ) ;
 int r_swap_ut64 (int ) ;
 int * realloc (int *,int) ;
 int * reg_buf ;
 scalar_t__ stub1 (scalar_t__,char*) ;

__attribute__((used)) static int r_debug_gdb_reg_write(RDebug *dbg, int type, const ut8 *buf, int size) {
 check_connection (dbg);
 if (!desc) {
  return R_DEBUG_REASON_UNKNOWN;
 }
 if (!reg_buf) {

  return -1;
 }
 int buflen = 0;
 int bits = dbg->anal->bits;
 const char *pcname = r_reg_get_name (dbg->anal->reg, R_REG_NAME_PC);
 RRegItem *reg = r_reg_get (dbg->anal->reg, pcname, 0);
 if (reg) {
  if (dbg->anal->bits != reg->size) {
   bits = reg->size;
  }
 }
 free (r_reg_get_bytes (dbg->reg, type, &buflen));






 if (buf_size < buflen) {
  ut8* new_buf = realloc (reg_buf, buflen * sizeof (ut8));
  if (!new_buf) {
   return -1;
  }
  reg_buf = new_buf;
  memset (new_buf + buf_size, 0, buflen - buf_size);
 }

 RRegItem* current = ((void*)0);


 bool bigendian = dbg->corebind.core && dbg->corebind.cfggeti (dbg->corebind.core, "cfg.bigendian");

 for (;;) {
  current = r_reg_next_diff (dbg->reg, type, reg_buf, buflen, current, bits);
  if (!current) {
   break;
  }
  ut64 val = r_reg_get_value (dbg->reg, current);
  int bytes = bits / 8;
  if (bigendian) {

   switch (bytes) {
   case 2:
    val = r_swap_ut16 (val);
    break;
   case 4:
    val = r_swap_ut32 (val);
    break;
   case 8:
   default:
    val = r_swap_ut64 (val);
    break;
   }
  }
  gdbr_write_reg (desc, current->name, (char*)&val, bytes);
 }
 return 1;
}
