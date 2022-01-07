
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct process {int dummy; } ;
typedef int BOOL ;


 scalar_t__ elf_synchronize_module_list (struct process*) ;
 scalar_t__ macho_synchronize_module_list (struct process*) ;

__attribute__((used)) static BOOL refresh_module_list(struct process* pcs)
{

    return elf_synchronize_module_list(pcs) || macho_synchronize_module_list(pcs);
}
