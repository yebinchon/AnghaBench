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
struct mime_header_decoder_data {int status; int /*<<< orphan*/  outdev; int /*<<< orphan*/  tmpdev; TYPE_1__* conv2_filter; TYPE_2__* conv1_filter; TYPE_3__* deco_filter; } ;
typedef  int /*<<< orphan*/  mbfl_string ;
struct TYPE_7__ {int /*<<< orphan*/  (* filter_flush ) (TYPE_3__*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  (* filter_flush ) (TYPE_2__*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  (* filter_flush ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

mbfl_string *
FUNC6(struct mime_header_decoder_data *pd, mbfl_string *result)
{
	switch (pd->status) {
	case 1:
	case 2:
	case 3:
	case 4:
	case 7:
	case 8:
	case 9:
		FUNC0(pd->conv1_filter, &pd->tmpdev);
		break;
	case 5:
	case 6:
		(*pd->deco_filter->filter_flush)(pd->deco_filter);
		(*pd->conv1_filter->filter_flush)(pd->conv1_filter);
		break;
	}
	(*pd->conv2_filter->filter_flush)(pd->conv2_filter);
	FUNC1(&pd->tmpdev);
	pd->status = 0;

	return FUNC2(&pd->outdev, result);
}