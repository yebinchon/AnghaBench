
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {int stream; int (* fprintf_func ) (int ,char*,int ) ;} ;
typedef int bfd_vma ;


 int stub1 (int ,char*,int ) ;

__attribute__((used)) static void objdump_print_address (bfd_vma vma, struct disassemble_info *inf)
{
    (*inf->fprintf_func) (inf->stream, "0x%x", vma);
}
