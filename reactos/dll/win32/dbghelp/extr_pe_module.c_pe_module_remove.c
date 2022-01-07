
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct process {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pe_info; } ;
struct module_format {TYPE_2__ u; } ;
struct TYPE_3__ {int fmap; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,struct module_format*) ;
 int pe_unmap_file (int *) ;

__attribute__((used)) static void pe_module_remove(struct process* pcs, struct module_format* modfmt)
{
    pe_unmap_file(&modfmt->u.pe_info->fmap);
    HeapFree(GetProcessHeap(), 0, modfmt);
}
