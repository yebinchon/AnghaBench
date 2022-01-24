#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  ex_data; int /*<<< orphan*/  strings; int /*<<< orphan*/  user_data; TYPE_1__* meth; } ;
typedef  TYPE_2__ UI ;
struct TYPE_7__ {int /*<<< orphan*/  (* ui_destroy_data ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_EX_INDEX_UI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int UI_FLAG_DUPL_DATA ; 
 int /*<<< orphan*/  free_string ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC5(UI *ui)
{
    if (ui == NULL)
        return;
    if ((ui->flags & UI_FLAG_DUPL_DATA) != 0) {
        ui->meth->ui_destroy_data(ui, ui->user_data);
    }
    FUNC3(ui->strings, free_string);
    FUNC1(CRYPTO_EX_INDEX_UI, ui, &ui->ex_data);
    FUNC0(ui->lock);
    FUNC2(ui);
}