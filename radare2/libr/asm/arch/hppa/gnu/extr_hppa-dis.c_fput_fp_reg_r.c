
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stream; int (* fprintf_func ) (int ,char*,unsigned int) ;} ;
typedef TYPE_1__ disassemble_info ;


 unsigned int* fp_reg_names ;
 int stub1 (int ,char*,unsigned int) ;
 int stub2 (int ,char*,unsigned int) ;

__attribute__((used)) static void
fput_fp_reg_r (unsigned reg, disassemble_info *info)
{

  if (reg < 4) {
   (*info->fprintf_func) (info->stream, "fpe%d", reg * 2 + 1);
  } else {
   (*info->fprintf_func) (info->stream, "%sR", fp_reg_names[reg]);
  }
}
