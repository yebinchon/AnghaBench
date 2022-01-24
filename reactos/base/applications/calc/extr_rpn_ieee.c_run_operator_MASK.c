#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_18__ ;
typedef  struct TYPE_20__   TYPE_15__ ;

/* Type definitions */
struct TYPE_22__ {void* f; int /*<<< orphan*/  i; } ;
typedef  TYPE_1__ calc_number_t ;
struct TYPE_23__ {scalar_t__ base; TYPE_1__ number; } ;
typedef  TYPE_2__ calc_node_t ;
struct TYPE_21__ {scalar_t__ base; int /*<<< orphan*/  is_nan; } ;
struct TYPE_20__ {int /*<<< orphan*/  (* op_i ) (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;int /*<<< orphan*/  (* op_f ) (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;int /*<<< orphan*/  (* op_p ) (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;} ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ IDC_RADIO_DEC ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_18__ calc ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 void* FUNC3 (TYPE_1__*) ; 
 TYPE_15__* operator_list ; 
 scalar_t__ percent_mode ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 

void FUNC7(calc_node_t *result,
                  calc_node_t *a,
                  calc_node_t *b,
                  unsigned int operation)
{
    calc_number_t da, db, dc;
    DWORD         base = calc.base;

    da = a->number;
    db = b->number;
    if (a->base == IDC_RADIO_DEC && b->base != IDC_RADIO_DEC) {
        db.f = FUNC3(&b->number);
        base = IDC_RADIO_DEC;
    } else
    if (a->base != IDC_RADIO_DEC && b->base == IDC_RADIO_DEC) {
        da.f = FUNC3(&a->number);
        base = IDC_RADIO_DEC;
    }

    if (base == IDC_RADIO_DEC) {
        if (percent_mode) {
            percent_mode = FALSE;
            operator_list[operation].op_p(&dc, &da, &db);
        } else
            operator_list[operation].op_f(&dc, &da, &db);
        if (FUNC0(dc.f) == 0)
            calc.is_nan = TRUE;
    } else {
        operator_list[operation].op_i(&dc, &da, &db);
        /* apply final limiter to result */
        FUNC1(&dc);
    }

    if (a->base == IDC_RADIO_DEC && b->base != IDC_RADIO_DEC) {
        result->number.i = FUNC2(&dc);
        FUNC1(&result->number);
    } else
    if (a->base != IDC_RADIO_DEC && b->base == IDC_RADIO_DEC)
        result->number.f = dc.f;
    else
        result->number = dc;
}