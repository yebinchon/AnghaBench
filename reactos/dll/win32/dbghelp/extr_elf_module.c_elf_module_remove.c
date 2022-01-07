
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct process {int dummy; } ;
struct TYPE_4__ {TYPE_1__* elf_info; } ;
struct module_format {TYPE_2__ u; } ;
struct TYPE_3__ {int file_map; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,struct module_format*) ;
 int elf_unmap_file (int *) ;

__attribute__((used)) static void elf_module_remove(struct process* pcs, struct module_format* modfmt)
{
    elf_unmap_file(&modfmt->u.elf_info->file_map);
    HeapFree(GetProcessHeap(), 0, modfmt);
}
