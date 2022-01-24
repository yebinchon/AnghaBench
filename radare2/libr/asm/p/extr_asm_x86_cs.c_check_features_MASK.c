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
struct TYPE_7__ {TYPE_1__* detail; } ;
typedef  TYPE_2__ cs_insn ;
struct TYPE_8__ {int /*<<< orphan*/  features; } ;
struct TYPE_6__ {int groups_count; int* groups; } ;
typedef  TYPE_3__ RAsm ;

/* Variables and functions */
 int X86_GRP_MODE32 ; 
 int X86_GRP_MODE64 ; 
 int /*<<< orphan*/  cd ; 
 char* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC2(RAsm *a, cs_insn *insn) {
	const char *name;
	int i;
	if (!insn || !insn->detail) {
		return 1;
	}
	for (i = 0; i < insn->detail->groups_count; i++) {
		int id = insn->detail->groups[i];
		if (id < 128) {
			continue;
		}
		if (id == X86_GRP_MODE32) {
			continue;
		}
		if (id == X86_GRP_MODE64) {
			continue;
		}
		name = FUNC0 (cd, id);
		if (!name) {
			return 1;
		}
		if (!FUNC1 (a->features, name)) {
			return 0;
		}
	}
	return 1;
}