#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct taskdialog_template_desc {TYPE_1__* taskconfig; } ;
struct TYPE_2__ {int /*<<< orphan*/  pszMainInstruction; } ;

/* Variables and functions */
 int /*<<< orphan*/  ID_MAIN_INSTRUCTION ; 
 unsigned int FUNC0 (struct taskdialog_template_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC1(struct taskdialog_template_desc *desc)
{
    return FUNC0(desc, ID_MAIN_INSTRUCTION, desc->taskconfig->pszMainInstruction);
}