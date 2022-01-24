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
struct TYPE_5__ {TYPE_1__* o; } ;
struct TYPE_4__ {int /*<<< orphan*/ * bin_obj; } ;
typedef  int /*<<< orphan*/  RList ;
typedef  int /*<<< orphan*/  RBuffer ;
typedef  TYPE_2__ RBinFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  free ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static RList *FUNC2(RBinFile *bf) {
	RList *ret = NULL;
	RBuffer *obj = bf->o->bin_obj;

	if (!(ret = FUNC1 (free))) {
		return NULL;
	}
	/* atmega8 */
	FUNC0 (ret, "int0", 2, obj);
	FUNC0 (ret, "int1", 4, obj);
	FUNC0 (ret, "timer2cmp", 6, obj);
	FUNC0 (ret, "timer2ovf", 8, obj);
	FUNC0 (ret, "timer1capt", 10, obj);
	FUNC0 (ret, "timer1cmpa", 12, obj);
	return ret;
}