#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  calc_number_t ;
struct TYPE_14__ {int /*<<< orphan*/  mf; } ;
struct TYPE_13__ {size_t operation; TYPE_5__ number; } ;
typedef  TYPE_1__ calc_node_t ;
struct TYPE_15__ {unsigned int prec; } ;
struct TYPE_12__ {size_t prev_operator; scalar_t__ is_nan; int /*<<< orphan*/  prev; } ;

/* Variables and functions */
 size_t RPN_OPERATOR_EQUAL ; 
 size_t RPN_OPERATOR_PARENT ; 
 size_t RPN_OPERATOR_PERCENT ; 
 TYPE_11__ calc ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_8__* operator_list ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*,TYPE_1__*,size_t) ; 

__attribute__((used)) static void FUNC9(calc_number_t *number)
{
    calc_node_t *op, ip;
    unsigned int prec;

    FUNC3(ip.number.mf);
    op = FUNC5();
    FUNC4(&ip, op);
    prec = operator_list[ip.operation].prec;
    while (!FUNC1()) {
        op = FUNC5();

        if (prec <= operator_list[op->operation].prec) {
            if (op->operation == RPN_OPERATOR_PARENT) continue;

            FUNC7(&calc.prev, &ip.number);
            FUNC8(&ip, op, &ip, op->operation);
            if (calc.is_nan) {
                FUNC0();
                FUNC2(ip.number.mf);
                return;
            }
        } else {
            FUNC6(op);
            break;
        }
    }

    if (ip.operation != RPN_OPERATOR_EQUAL && ip.operation != RPN_OPERATOR_PERCENT)
        FUNC6(&ip);

    calc.prev_operator = op->operation;

    FUNC7(number, &ip.number);
    FUNC2(ip.number.mf);
}