#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t opcode; int /*<<< orphan*/  b; int /*<<< orphan*/  b_type; int /*<<< orphan*/  a; int /*<<< orphan*/  a_type; } ;
struct TYPE_7__ {int opcode; int /*<<< orphan*/  a; int /*<<< orphan*/  a_type; } ;
struct TYPE_6__ {scalar_t__ opcode; } ;
struct TYPE_9__ {TYPE_3__ b; TYPE_2__ n; TYPE_1__ code; } ;
typedef  TYPE_4__ op ;

/* Variables and functions */
 char** opName ; 
 char** opNameB ; 
 int FUNC0 (char*,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(char *out, const op* o) {
	char arg[32], arg2[32];
	if (o->code.opcode == 0) {
		FUNC3 (arg, o->n.a_type, o->n.a);
		if (o->n.opcode > 1) {
			FUNC1 (out, "invalid");
			return FUNC2 (out);
		}
		return FUNC0(out, "%s %s",
			opNameB[o->n.opcode], arg);
	}
	FUNC3 (arg, o->b.a_type, o->b.a);
	FUNC3 (arg2, o->b.b_type, o->b.b);
	return FUNC0(out, "%s %s, %s", opName[o->b.opcode], arg, arg2);
}