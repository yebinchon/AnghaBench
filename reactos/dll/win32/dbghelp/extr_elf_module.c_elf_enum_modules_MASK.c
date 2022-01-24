#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct process {int /*<<< orphan*/  dbg_hdr_addr; int /*<<< orphan*/  handle; } ;
struct elf_info {int flags; scalar_t__ module_name; int /*<<< orphan*/  dbg_hdr_addr; } ;
struct elf_enum_user {void* user; int /*<<< orphan*/  cb; } ;
typedef  int /*<<< orphan*/  pcs ;
typedef  int /*<<< orphan*/  enum_modules_cb ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int ELF_INFO_DEBUG_HEADER ; 
 int ELF_INFO_NAME ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct process*,scalar_t__,int /*<<< orphan*/ ,struct elf_enum_user*) ; 
 int /*<<< orphan*/  elf_enum_modules_translate ; 
 int /*<<< orphan*/  FUNC3 (struct process*,struct elf_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct process*,int /*<<< orphan*/ ,int) ; 

BOOL FUNC5(HANDLE hProc, enum_modules_cb cb, void* user)
{
    struct process      pcs;
    struct elf_info     elf_info;
    BOOL                ret;
    struct elf_enum_user eeu;

    FUNC4(&pcs, 0, sizeof(pcs));
    pcs.handle = hProc;
    elf_info.flags = ELF_INFO_DEBUG_HEADER | ELF_INFO_NAME;
    if (!FUNC3(&pcs, &elf_info)) return FALSE;
    pcs.dbg_hdr_addr = elf_info.dbg_hdr_addr;
    eeu.cb = cb;
    eeu.user = user;
    ret = FUNC2(&pcs, elf_info.module_name, elf_enum_modules_translate, &eeu);
    FUNC1(FUNC0(), 0, (char*)elf_info.module_name);
    return ret;
}