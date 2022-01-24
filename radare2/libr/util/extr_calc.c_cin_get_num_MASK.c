#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
struct TYPE_5__ {double n; double d; } ;
typedef  TYPE_1__ RNumCalcValue ;
typedef  int /*<<< orphan*/  RNumCalc ;
typedef  int /*<<< orphan*/  RNum ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC2 (double) ; 
 int R_NUMCALC_STRSZ ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (char*,char*,double*) ; 
 scalar_t__ FUNC8 (char*,char) ; 

__attribute__((used)) static int FUNC9(RNum *num, RNumCalc *nc, RNumCalcValue *n) {
	double d;
	char str[R_NUMCALC_STRSZ + 1]; // TODO: move into the heap?
	int i = 0;
	char c;
	str[0] = 0;
	while (FUNC3 (num, nc, &c)) {
		if (c != '_' && c!=':' && c!='.' && !FUNC5 ((ut8)c)) {
			FUNC4 (num, nc, c);
			break;
		}
		if (i < R_NUMCALC_STRSZ) {
			str[i++] = c;
		}
	}
	str[i] = 0;
	*n = FUNC1 (FUNC6 (num, str));
	if (FUNC0 (*str) && FUNC8 (str, '.')) {
		if (FUNC7 (str, "%lf", &d) < 1) {
			return 0;
		}
		if (n->n < d) {
			*n = FUNC2 (d);
		}
		n->d = d;
	}
	return 1;
}