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
struct m_opt_backup {TYPE_1__* co; int /*<<< orphan*/  backup; struct m_opt_backup* next; } ;
struct m_config {struct m_opt_backup* backup_opts; } ;
struct TYPE_2__ {int is_set_locally; int /*<<< orphan*/  opt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct m_config*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct m_opt_backup*) ; 

void FUNC3(struct m_config *config)
{
    while (config->backup_opts) {
        struct m_opt_backup *bc = config->backup_opts;
        config->backup_opts = bc->next;

        FUNC0(config, bc->co, bc->backup, 0);

        FUNC1(bc->co->opt, bc->backup);
        bc->co->is_set_locally = false;
        FUNC2(bc);
    }
}