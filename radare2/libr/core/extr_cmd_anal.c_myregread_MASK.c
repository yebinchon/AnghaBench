#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_5__ {int /*<<< orphan*/  regread; int /*<<< orphan*/  regs; int /*<<< orphan*/  inputregs; int /*<<< orphan*/  regwrite; } ;
struct TYPE_4__ {TYPE_2__* user; } ;
typedef  TYPE_1__ RAnalEsil ;
typedef  TYPE_2__ AeaStats ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(RAnalEsil *esil, const char *name, ut64 *val, int *len) {
	AeaStats *stats = esil->user;
	if (!FUNC0 (*name)) {
		if (!FUNC1 (stats->inputregs, name)) {
			if (!FUNC1 (stats->regwrite, name)) {
				FUNC2 (stats->inputregs, FUNC3 (name));
			}
		}
		if (!FUNC1 (stats->regs, name)) {
			FUNC2 (stats->regs, FUNC3 (name));
		}
		if (!FUNC1 (stats->regread, name)) {
			FUNC2 (stats->regread, FUNC3 (name));
		}
	}
	return 0;
}