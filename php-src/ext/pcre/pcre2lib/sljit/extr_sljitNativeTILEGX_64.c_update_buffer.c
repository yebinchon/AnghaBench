
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tilegx_bundle_bits ;
struct sljit_compiler {int dummy; } ;
struct jit_instr {int line; } ;
typedef int sljit_s32 ;


 int SLJIT_UNREACHABLE () ;
 scalar_t__ assign_pipes () ;
 int get_bundle_bit (struct jit_instr*) ;
 struct jit_instr* inst_buf ;
 int inst_buf_index ;
 int print_insn_tilegx (int *) ;
 int printf (char*,...) ;
 int push_inst (struct sljit_compiler*,int ) ;
 int push_inst_nodebug (struct sljit_compiler*,int ) ;

__attribute__((used)) static sljit_s32 update_buffer(struct sljit_compiler *compiler)
{
 int i;
 int orig_index = inst_buf_index;
 struct jit_instr inst0 = inst_buf[0];
 struct jit_instr inst1 = inst_buf[1];
 struct jit_instr inst2 = inst_buf[2];
 tilegx_bundle_bits bits = 0;


 if (assign_pipes() == 0) {
  for (i = 0; i < inst_buf_index; i++) {
   bits |= get_bundle_bit(inst_buf + i);



  }
  inst_buf_index = 0;




  return push_inst(compiler, bits);

 }






 inst_buf_index = orig_index - 1;
 inst_buf[0] = inst0;
 inst_buf[1] = inst1;
 inst_buf[2] = inst2;
 if (assign_pipes() == 0) {
  for (i = 0; i < inst_buf_index; i++) {
   bits |= get_bundle_bit(inst_buf + i);



  }
  if ((orig_index - 1) == 2) {
   inst_buf[0] = inst2;
   inst_buf_index = 1;
  } else if ((orig_index - 1) == 1) {
   inst_buf[0] = inst1;
   inst_buf_index = 1;
  } else
   SLJIT_UNREACHABLE();




  return push_inst(compiler, bits);

 } else {



  inst_buf_index = 1;
  inst_buf[0] = inst0;
  inst_buf[1] = inst1;
  inst_buf[2] = inst2;
  if (assign_pipes() == 0) {
   for (i = 0; i < inst_buf_index; i++) {
    bits |= get_bundle_bit(inst_buf + i);



   }
   inst_buf[0] = inst1;
   inst_buf[1] = inst2;
   inst_buf_index = orig_index - 1;



   return push_inst(compiler, bits);

  } else
   SLJIT_UNREACHABLE();
 }

 SLJIT_UNREACHABLE();
}
