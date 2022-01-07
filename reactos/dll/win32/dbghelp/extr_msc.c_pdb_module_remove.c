
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct process {int dummy; } ;
struct TYPE_5__ {TYPE_1__* pdb_info; } ;
struct module_format {TYPE_2__ u; } ;
struct TYPE_6__ {scalar_t__ hMap; scalar_t__ image; } ;
struct TYPE_4__ {unsigned int used_subfiles; TYPE_3__* pdb_files; } ;


 int CloseHandle (scalar_t__) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,struct module_format*) ;
 int UnmapViewOfFile (scalar_t__) ;
 int pdb_free_file (TYPE_3__*) ;

__attribute__((used)) static void pdb_module_remove(struct process* pcsn, struct module_format* modfmt)
{
    unsigned i;

    for (i = 0; i < modfmt->u.pdb_info->used_subfiles; i++)
    {
        pdb_free_file(&modfmt->u.pdb_info->pdb_files[i]);
        if (modfmt->u.pdb_info->pdb_files[i].image)
            UnmapViewOfFile(modfmt->u.pdb_info->pdb_files[i].image);
        if (modfmt->u.pdb_info->pdb_files[i].hMap)
            CloseHandle(modfmt->u.pdb_info->pdb_files[i].hMap);
    }
    HeapFree(GetProcessHeap(), 0, modfmt);
}
