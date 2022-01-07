
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t ut8 ;
struct TYPE_2__ {int type; char* name; } ;
typedef int RAsmOp ;






 int r_asm_op_set_asm (int *,char const*) ;
 char* sdb_fmt (char*,size_t const,...) ;
 int spc700OpLength (int) ;
 TYPE_1__* spc_op_table ;

__attribute__((used)) static int spc700Disass(RAsmOp *op, const ut8 *buf, int len) {
 int foo = spc700OpLength (spc_op_table[buf[0]].type);
 if (len < foo) {
  return 0;
 }
 const char *buf_asm = "invalid";
 switch (spc_op_table[buf[0]].type) {
 case 128:
  buf_asm = spc_op_table[buf[0]].name;
  break;
 case 130:
  buf_asm = sdb_fmt (spc_op_table[buf[0]].name, buf[1]);
  break;
 case 129:
  buf_asm = sdb_fmt (spc_op_table[buf[0]].name, buf[1], buf[2]);
  break;
 case 131:
  buf_asm = sdb_fmt (spc_op_table[buf[0]].name, buf[1]+0x100*buf[2]);
  break;
 }
 r_asm_op_set_asm (op, buf_asm);
 return foo;
}
