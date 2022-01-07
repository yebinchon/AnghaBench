
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct process {int dbg_hdr_addr; int handle; } ;
struct elf_info {int flags; scalar_t__ module_name; int dbg_hdr_addr; } ;
struct elf_enum_user {void* user; int cb; } ;
typedef int pcs ;
typedef int enum_modules_cb ;
typedef int HANDLE ;
typedef int BOOL ;


 int ELF_INFO_DEBUG_HEADER ;
 int ELF_INFO_NAME ;
 int FALSE ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,char*) ;
 int elf_enum_modules_internal (struct process*,scalar_t__,int ,struct elf_enum_user*) ;
 int elf_enum_modules_translate ;
 int elf_search_loader (struct process*,struct elf_info*) ;
 int memset (struct process*,int ,int) ;

BOOL elf_enum_modules(HANDLE hProc, enum_modules_cb cb, void* user)
{
    struct process pcs;
    struct elf_info elf_info;
    BOOL ret;
    struct elf_enum_user eeu;

    memset(&pcs, 0, sizeof(pcs));
    pcs.handle = hProc;
    elf_info.flags = ELF_INFO_DEBUG_HEADER | ELF_INFO_NAME;
    if (!elf_search_loader(&pcs, &elf_info)) return FALSE;
    pcs.dbg_hdr_addr = elf_info.dbg_hdr_addr;
    eeu.cb = cb;
    eeu.user = user;
    ret = elf_enum_modules_internal(&pcs, elf_info.module_name, elf_enum_modules_translate, &eeu);
    HeapFree(GetProcessHeap(), 0, (char*)elf_info.module_name);
    return ret;
}
