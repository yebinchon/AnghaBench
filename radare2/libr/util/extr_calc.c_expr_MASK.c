#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int curr_tok; } ;
typedef  int /*<<< orphan*/  RNumCalcValue ;
typedef  TYPE_1__ RNumCalc ;
typedef  int /*<<< orphan*/  RNum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  RNCAND 136 
#define  RNCMINUS 135 
#define  RNCORR 134 
#define  RNCPLUS 133 
#define  RNCROL 132 
#define  RNCROR 131 
#define  RNCSHL 130 
#define  RNCSHR 129 
#define  RNCXOR 128 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 

__attribute__((used)) static RNumCalcValue FUNC10(RNum *num, RNumCalc *nc, int get) {
	RNumCalcValue left = FUNC9 (num, nc, get);
	for (;;) {
		switch (nc->curr_tok) {
		case RNCSHL: left = FUNC5 (left, FUNC9 (num, nc, 1)); break;
		case RNCSHR: left = FUNC6 (left, FUNC9 (num, nc, 1)); break;
		case RNCROL: left = FUNC3 (left, FUNC9 (num, nc, 1)); break;
		case RNCROR: left = FUNC4 (left, FUNC9 (num, nc, 1)); break;
		case RNCPLUS: left = FUNC0 (left, FUNC9 (num, nc, 1)); break;
		case RNCMINUS: left = FUNC7 (left, FUNC9 (num, nc, 1)); break;
		case RNCXOR: left = FUNC8 (left, FUNC9 (num, nc, 1)); break;
		case RNCORR: left = FUNC2 (left, FUNC9 (num, nc, 1)); break;
		case RNCAND: left = FUNC1 (left, FUNC9 (num, nc, 1)); break;
		default:
			return left;
		}
	}
	return left;
}