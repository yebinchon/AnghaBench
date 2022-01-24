#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int ut8 ;
typedef  scalar_t__ ut64 ;
struct TYPE_9__ {TYPE_1__* anal; } ;
struct TYPE_8__ {int /*<<< orphan*/  reg; } ;
typedef  TYPE_2__ RAnalEsil ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,scalar_t__*) ; 
 char* FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5 (RAnalEsil *esil) {
	if (!esil || !esil->anal || !esil->anal->reg) {
		return false;
	}
	char *v = FUNC2(esil);
	ut64 n;
	if (!v || !FUNC1(esil, v, &n)) {
		return false;
	}
	FUNC0 (v);
	ut8 val = (ut8)n;
	FUNC4 (esil, "H", &n, NULL);
	const ut8 H = (ut8)n;
	FUNC4 (esil, "C", &n, NULL);
	const ut8 C = (ut8)n;
	FUNC4 (esil, "N", &n, NULL);
	if (n) {
		if (C) {
			val = (val - 0x60) & 0xff;
		}
		if (H) {
			val = (val - 0x06) & 0xff;
		}
	} else {
		if (C || (val > 0x99)) {
			val = (val + 0x60) & 0xff;
		}
		if (H || ((val & 0x0f) > 0x09)) {
			val += 0x06;
		};
	}
	return FUNC3(esil, val);
}