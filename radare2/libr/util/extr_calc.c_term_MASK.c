#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int dbz; } ;
struct TYPE_20__ {scalar_t__ curr_tok; } ;
struct TYPE_19__ {int /*<<< orphan*/  n; int /*<<< orphan*/  d; } ;
typedef  TYPE_1__ RNumCalcValue ;
typedef  TYPE_2__ RNumCalc ;
typedef  TYPE_3__ RNum ;

/* Variables and functions */
 TYPE_1__ FUNC0 (TYPE_1__,TYPE_1__) ; 
 TYPE_1__ FUNC1 (TYPE_1__,TYPE_1__) ; 
 TYPE_1__ FUNC2 (TYPE_1__,TYPE_1__) ; 
 scalar_t__ RNCDIV ; 
 scalar_t__ RNCMOD ; 
 scalar_t__ RNCMUL ; 
 TYPE_1__ FUNC3 (TYPE_3__*,TYPE_2__*,int) ; 

__attribute__((used)) static RNumCalcValue FUNC4(RNum *num, RNumCalc *nc, int get) {
	RNumCalcValue left = FUNC3 (num, nc, get);
	for (;;) {
		if (nc->curr_tok == RNCMUL) {
			left = FUNC2 (left, FUNC3 (num, nc, 1));
		} else if (nc->curr_tok == RNCMOD) {
			RNumCalcValue d = FUNC3 (num, nc, 1);
			if (!d.d) {
				//error (num, nc, "divide by 0");
				return d;
			}
			left = FUNC1 (left, d);
		} else if (nc->curr_tok == RNCDIV) {
			RNumCalcValue d = FUNC3 (num, nc, 1);
			if (num != NULL && (!d.d || !d.n)) {
				num->dbz = 1;
				return d;
			}
			left = FUNC0 (left, d);
		} else {
			return left;
		}
	}
}