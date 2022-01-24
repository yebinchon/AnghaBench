#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut16 ;
struct TYPE_7__ {int opcode; } ;
struct TYPE_8__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_9__ {TYPE_1__ b; TYPE_2__ member_0; } ;
typedef  TYPE_3__ op ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const,TYPE_3__*,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_3__*) ; 

int FUNC3(char *out, const ut16* inp, int len, int *cost) {
	op o = {{0}};
	int delta = FUNC0 (inp[0], &o, inp[1], inp[2]);
	if (cost) *cost = FUNC1(&o) + ((o.b.opcode >= 0xc)?1:0);
	FUNC2 (out, &o);
	//ind = (o.b.opcode >= 0xC);
	return delta<<1;
}