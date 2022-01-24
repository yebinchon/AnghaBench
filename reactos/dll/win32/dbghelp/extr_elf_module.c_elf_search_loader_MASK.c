#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct process {int /*<<< orphan*/  handle; } ;
struct elf_info {int dummy; } ;
typedef  int /*<<< orphan*/  pbi ;
typedef  int /*<<< orphan*/  base ;
typedef  int /*<<< orphan*/  ULONG_PTR ;
struct TYPE_5__ {TYPE_1__* PebBaseAddress; } ;
struct TYPE_4__ {int /*<<< orphan*/ * Reserved; } ;
typedef  TYPE_2__ PROCESS_BASIC_INFORMATION ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ProcessBasicInformation ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct process*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct elf_info*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static BOOL FUNC4(struct process* pcs, struct elf_info* elf_info)
{
    PROCESS_BASIC_INFORMATION pbi;
    ULONG_PTR base = 0;

    if (!FUNC0( pcs->handle, ProcessBasicInformation, &pbi, sizeof(pbi), NULL ))
        FUNC1( pcs->handle, &pbi.PebBaseAddress->Reserved[0], &base, sizeof(base), NULL );

    return FUNC2(pcs, FUNC3(), base, 0, elf_info);
}