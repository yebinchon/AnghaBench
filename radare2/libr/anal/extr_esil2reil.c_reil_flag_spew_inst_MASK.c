#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
struct TYPE_14__ {TYPE_1__* anal; TYPE_2__* Reil; } ;
struct TYPE_13__ {int /*<<< orphan*/  cur; } ;
struct TYPE_12__ {int bits; } ;
typedef  TYPE_3__ RAnalEsil ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

void FUNC8(RAnalEsil *esil, const char *flag) {
	ut8 bit;
	switch (flag[0]) {
		case 'z': // zero-flag
			FUNC0(esil, esil->Reil->cur);
			break;
		case 'b':
			bit = (ut8)FUNC2(NULL, &flag[1]);
			FUNC3(esil, bit);
			break;
		case 'c':
			bit = (ut8)FUNC2(NULL, &flag[1]);
			FUNC4(esil, bit);
			break;
		case 'o':
			FUNC5(esil);
			break;
		case 'p':
			FUNC6(esil);
			break;
		case 'r':
			FUNC1(esil, esil->anal->bits / 8);
			break;
		case 's':
			FUNC7(esil);
			break;
		default:
			return;
	}

	return;
}