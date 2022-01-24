#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int ut8 ;
struct TYPE_8__ {TYPE_1__* anal; } ;
struct TYPE_7__ {scalar_t__ size; } ;
struct TYPE_6__ {int /*<<< orphan*/  reg; } ;
typedef  TYPE_2__ RRegItem ;
typedef  TYPE_3__ RAnalEsil ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static ut8 FUNC1(RAnalEsil *esil, const char *r) {
	if (!esil || !esil->anal || !esil->anal->reg || !r) {
		return false;
	}
	RRegItem *i = FUNC0(esil->anal->reg, r, -1);
	return i ? (ut8)i->size : 0;
}