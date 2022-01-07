
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_11__ {int reg; TYPE_1__* anal; } ;
struct TYPE_10__ {int size; int name; } ;
struct TYPE_9__ {int bits; int reg; } ;
typedef TYPE_2__ RRegItem ;
typedef TYPE_3__ RDebug ;


 int R_REG_NAME_PC ;
 int buf_size ;
 int desc ;
 int free (int ) ;
 int memset (int *,int ,int) ;
 int qnxr_write_reg (int ,int ,char*,int) ;
 TYPE_2__* r_reg_get (int ,char const*,int ) ;
 int r_reg_get_bytes (int ,int,int*) ;
 char* r_reg_get_name (int ,int ) ;
 int r_reg_get_value (int ,TYPE_2__*) ;
 TYPE_2__* r_reg_next_diff (int ,int,int *,int,TYPE_2__*,int) ;
 int * realloc (int *,int) ;
 int * reg_buf ;

__attribute__((used)) static int r_debug_qnx_reg_write (RDebug *dbg, int type, const ut8 *buf, int size) {
 int buflen = 0;
 int bits = dbg->anal->bits;
 const char *pcname = r_reg_get_name (dbg->anal->reg, R_REG_NAME_PC);
 RRegItem *reg = r_reg_get (dbg->anal->reg, pcname, 0);
 if (!reg_buf) {

  return -1;
 }
 if (reg) {
  if (dbg->anal->bits != reg->size) {
   bits = reg->size;
  }
 }
 free (r_reg_get_bytes (dbg->reg, type, &buflen));






 if (buf_size < buflen) {
  ut8 *new_buf = realloc (reg_buf, buflen * sizeof (ut8));
  if (!new_buf) {
   return -1;
  }
  reg_buf = new_buf;
  memset (new_buf + buf_size, 0, buflen - buf_size);
 }

 RRegItem *current = ((void*)0);
 for (;;) {
  current = r_reg_next_diff (dbg->reg, type, reg_buf, buflen, current, bits);
  if (!current) {
   break;
  }
  ut64 val = r_reg_get_value (dbg->reg, current);
  int bytes = bits / 8;
  qnxr_write_reg (desc, current->name, (char *)&val, bytes);
 }
 return 1;
}
