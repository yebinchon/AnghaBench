#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int status; int (* flush_function ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  data; int /*<<< orphan*/  (* output_function ) (int,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ mbfl_convert_filter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(mbfl_convert_filter *filter)
{
	/* back to ascii */
	if ((filter->status & 0xff00) != 0) {
		FUNC0((*filter->output_function)(0x0f, filter->data));		/* SI */
	}

	filter->status &= 0xff;

	if (filter->flush_function != NULL) {
		return (*filter->flush_function)(filter->data);
	}

	return 0;
}