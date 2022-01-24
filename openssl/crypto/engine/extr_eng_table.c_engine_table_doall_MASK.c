#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  engine_table_doall_cb ;
struct TYPE_6__ {void* arg; int /*<<< orphan*/ * cb; } ;
struct TYPE_5__ {int /*<<< orphan*/  piles; } ;
typedef  TYPE_1__ ENGINE_TABLE ;
typedef  TYPE_2__ ENGINE_PILE_DOALL ;

/* Variables and functions */
 int /*<<< orphan*/  int_dall ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 

void FUNC1(ENGINE_TABLE *table, engine_table_doall_cb *cb,
                        void *arg)
{
    ENGINE_PILE_DOALL dall;
    dall.cb = cb;
    dall.arg = arg;
    if (table)
        FUNC0(&table->piles, int_dall, &dall);
}