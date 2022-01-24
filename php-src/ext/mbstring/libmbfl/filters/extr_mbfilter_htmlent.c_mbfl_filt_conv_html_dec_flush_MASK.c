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
struct TYPE_3__ {int status; int (* output_function ) (unsigned char,int /*<<< orphan*/ ) ;int /*<<< orphan*/  data; int /*<<< orphan*/  (* flush_function ) (int /*<<< orphan*/ ) ;scalar_t__ opaque; } ;
typedef  TYPE_1__ mbfl_convert_filter ;

/* Variables and functions */
 int FUNC0 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(mbfl_convert_filter *filter)
{
	int status, pos = 0;
	unsigned char *buffer;
	int err = 0;

	buffer = (unsigned char*)filter->opaque;
	status = filter->status;
	filter->status = 0;

	/* flush fragments */
	while (status--) {
		int e = (*filter->output_function)(buffer[pos++], filter->data);
		if (e != 0)
			err = e;
	}

	if (filter->flush_function != NULL) {
		(*filter->flush_function)(filter->data);
	}

	return err;
}