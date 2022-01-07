
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stream; int (* fprintf_func ) (int ,char*,char*) ;} ;
typedef TYPE_1__ disassemble_info ;


 char** fp_reg_names ;
 int stub1 (int ,char*,char*) ;

__attribute__((used)) static void
fput_fp_reg (unsigned reg, disassemble_info *info)
{
  (*info->fprintf_func) (info->stream, "%s", reg ? fp_reg_names[reg] : "fr0");
}
