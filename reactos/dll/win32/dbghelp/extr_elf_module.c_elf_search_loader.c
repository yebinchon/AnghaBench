
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct process {int handle; } ;
struct elf_info {int dummy; } ;
typedef int pbi ;
typedef int base ;
typedef int ULONG_PTR ;
struct TYPE_5__ {TYPE_1__* PebBaseAddress; } ;
struct TYPE_4__ {int * Reserved; } ;
typedef TYPE_2__ PROCESS_BASIC_INFORMATION ;
typedef int BOOL ;


 int NtQueryInformationProcess (int ,int ,TYPE_2__*,int,int *) ;
 int ProcessBasicInformation ;
 int ReadProcessMemory (int ,int *,int *,int,int *) ;
 int elf_search_and_load_file (struct process*,int ,int ,int ,struct elf_info*) ;
 int get_wine_loader_name () ;

__attribute__((used)) static BOOL elf_search_loader(struct process* pcs, struct elf_info* elf_info)
{
    PROCESS_BASIC_INFORMATION pbi;
    ULONG_PTR base = 0;

    if (!NtQueryInformationProcess( pcs->handle, ProcessBasicInformation, &pbi, sizeof(pbi), ((void*)0) ))
        ReadProcessMemory( pcs->handle, &pbi.PebBaseAddress->Reserved[0], &base, sizeof(base), ((void*)0) );

    return elf_search_and_load_file(pcs, get_wine_loader_name(), base, 0, elf_info);
}
