
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stream; int (* fprintf_func ) (int ,char*,unsigned int) ;} ;
typedef TYPE_1__ disassemble_info ;


 int stub1 (int ,char*,int) ;
 int stub2 (int ,char*,unsigned int) ;

__attribute__((used)) static void
fput_const (unsigned num, disassemble_info *info)
{
 if ((int)num < 0) {
  (*info->fprintf_func) (info->stream, "-%x", -(int)num);
 } else {
  (*info->fprintf_func) (info->stream, "%x", num);
 }
}
