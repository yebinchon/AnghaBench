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
struct TYPE_7__ {TYPE_4__* name; } ;
struct TYPE_6__ {TYPE_4__* name; } ;
struct TYPE_9__ {TYPE_2__ objName; TYPE_1__ modName; } ;
struct TYPE_8__ {int /*<<< orphan*/  dbiexhdrs; } ;
typedef  TYPE_3__ SDbiStream ;
typedef  TYPE_4__ SDBIExHeader ;
typedef  int /*<<< orphan*/  RListIter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *stream) {
	SDbiStream *t = (SDbiStream *) stream;
	SDBIExHeader *dbi_ex_header = 0;

	RListIter *it = FUNC4(t->dbiexhdrs);
	while (FUNC3(it)) {
		dbi_ex_header = (SDBIExHeader *) FUNC2(it);
		FUNC0(dbi_ex_header->modName.name);
		FUNC0(dbi_ex_header->objName.name);
		FUNC0(dbi_ex_header);
	}
	FUNC1 (t->dbiexhdrs);
}