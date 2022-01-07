
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct process {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dwarf2_info; } ;
struct module_format {TYPE_2__ u; } ;
struct TYPE_3__ {int debug_frame; int debug_loc; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,struct module_format*) ;
 int dwarf2_fini_section (int *) ;

__attribute__((used)) static void dwarf2_module_remove(struct process* pcs, struct module_format* modfmt)
{
    dwarf2_fini_section(&modfmt->u.dwarf2_info->debug_loc);
    dwarf2_fini_section(&modfmt->u.dwarf2_info->debug_frame);
    HeapFree(GetProcessHeap(), 0, modfmt);
}
