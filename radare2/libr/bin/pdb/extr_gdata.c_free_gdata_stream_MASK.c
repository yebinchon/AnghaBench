#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  globals_list; } ;
struct TYPE_5__ {TYPE_2__* name; } ;
struct TYPE_6__ {TYPE_1__ name; } ;
typedef  TYPE_2__ SGlobal ;
typedef  TYPE_3__ SGDATAStream ;
typedef  int /*<<< orphan*/  RListIter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(void *stream) {
	SGDATAStream *data_stream = (SGDATAStream *) stream;
	SGlobal *global = 0;
	RListIter *it = 0;

	it = FUNC4(data_stream->globals_list);
	while (FUNC3(it)) {
		global = (SGlobal *) FUNC2(it);
		if (global->name.name) {
			FUNC0 (global->name.name);
		}
		FUNC0 (global);
	}
	FUNC1 (data_stream->globals_list);
}