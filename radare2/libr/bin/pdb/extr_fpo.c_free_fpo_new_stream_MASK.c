#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  fpo_data_list; } ;
typedef  int /*<<< orphan*/  SFPO_DATA_V2 ;
typedef  TYPE_1__ SFPONewStream ;
typedef  int /*<<< orphan*/  RListIter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(void *stream)
{
	SFPONewStream *fpo_stream = (SFPONewStream *) stream;
	RListIter *it = 0;
	SFPO_DATA_V2 *fpo_data = 0;

	it = FUNC4(fpo_stream->fpo_data_list);
	while (FUNC3(it)) {
		fpo_data = (SFPO_DATA_V2 *) FUNC2(it);
		FUNC0(fpo_data);
	}
	FUNC1 (fpo_stream->fpo_data_list);
}