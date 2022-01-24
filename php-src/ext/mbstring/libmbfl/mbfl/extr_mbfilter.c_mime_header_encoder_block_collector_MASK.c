#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {size_t pos; } ;
struct mime_header_encoder_data {int status2; size_t prevpos; size_t linehead; size_t firstindent; char* lwsp; int lwsplen; char* encname; int encnamelen; TYPE_1__* conv2_filter; TYPE_9__ outdev; TYPE_1__* encod_filter; TYPE_1__* encod_filter_backup; TYPE_1__* conv2_filter_backup; } ;
struct TYPE_12__ {int (* filter_function ) (int,TYPE_1__*) ;int /*<<< orphan*/  (* filter_flush ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*,char*,int) ; 
 int FUNC2 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (int,TYPE_1__*) ; 
 int FUNC8 (int,TYPE_1__*) ; 
 int FUNC9 (int,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC10(int c, void *data)
{
	size_t n;
	struct mime_header_encoder_data *pe = (struct mime_header_encoder_data *)data;

	switch (pe->status2) {
	case 1:	/* encoded word */
		pe->prevpos = pe->outdev.pos;
		FUNC0(pe->conv2_filter, pe->conv2_filter_backup);
		FUNC0(pe->encod_filter, pe->encod_filter_backup);
		(*pe->conv2_filter->filter_function)(c, pe->conv2_filter);
		(*pe->conv2_filter->filter_flush)(pe->conv2_filter);
		(*pe->encod_filter->filter_flush)(pe->encod_filter);
		n = pe->outdev.pos - pe->linehead + pe->firstindent;
		pe->outdev.pos = pe->prevpos;
		FUNC0(pe->conv2_filter_backup, pe->conv2_filter);
		FUNC0(pe->encod_filter_backup, pe->encod_filter);
		if (n >= 74) {
			(*pe->conv2_filter->filter_flush)(pe->conv2_filter);
			(*pe->encod_filter->filter_flush)(pe->encod_filter);
			FUNC1(&pe->outdev, "\x3f\x3d", 2);	/* ?= */
			FUNC1(&pe->outdev, pe->lwsp, pe->lwsplen);
			pe->linehead = pe->outdev.pos;
			pe->firstindent = 0;
			FUNC1(&pe->outdev, pe->encname, pe->encnamelen);
			c = (*pe->conv2_filter->filter_function)(c, pe->conv2_filter);
		} else {
			c = (*pe->conv2_filter->filter_function)(c, pe->conv2_filter);
		}
		break;

	default:
		FUNC1(&pe->outdev, pe->encname, pe->encnamelen);
		c = (*pe->conv2_filter->filter_function)(c, pe->conv2_filter);
		pe->status2 = 1;
		break;
	}

	return c;
}