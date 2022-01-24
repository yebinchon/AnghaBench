#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct process {int dummy; } ;
struct TYPE_5__ {TYPE_1__* pdb_info; } ;
struct module_format {TYPE_2__ u; } ;
struct TYPE_6__ {scalar_t__ hMap; scalar_t__ image; } ;
struct TYPE_4__ {unsigned int used_subfiles; TYPE_3__* pdb_files; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct module_format*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC5(struct process* pcsn, struct module_format* modfmt)
{
    unsigned    i;

    for (i = 0; i < modfmt->u.pdb_info->used_subfiles; i++)
    {
        FUNC4(&modfmt->u.pdb_info->pdb_files[i]);
        if (modfmt->u.pdb_info->pdb_files[i].image)
            FUNC3(modfmt->u.pdb_info->pdb_files[i].image);
        if (modfmt->u.pdb_info->pdb_files[i].hMap)
            FUNC0(modfmt->u.pdb_info->pdb_files[i].hMap);
    }
    FUNC2(FUNC1(), 0, modfmt);
}