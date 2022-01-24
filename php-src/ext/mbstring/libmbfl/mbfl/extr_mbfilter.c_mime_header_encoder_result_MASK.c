#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ pos; } ;
struct TYPE_12__ {int pos; } ;
struct mime_header_encoder_data {int status1; int linehead; char* lwsp; int lwsplen; TYPE_3__ outdev; scalar_t__ status2; scalar_t__ prevpos; TYPE_5__ tmpdev; TYPE_1__* encod_filter; TYPE_2__* conv2_filter; } ;
typedef  int /*<<< orphan*/  mbfl_string ;
struct TYPE_10__ {int /*<<< orphan*/  (* filter_flush ) (TYPE_2__*) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  (* filter_flush ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

mbfl_string *
FUNC7(struct mime_header_encoder_data *pe, mbfl_string *result)
{
	if (pe->status1 >= 10) {
		(*pe->conv2_filter->filter_flush)(pe->conv2_filter);
		(*pe->encod_filter->filter_flush)(pe->encod_filter);
		FUNC4(&pe->outdev, "\x3f\x3d", 2);		/* ?= */
	} else if (pe->tmpdev.pos > 0) {
		if (pe->outdev.pos > 0) {
			if ((pe->outdev.pos - pe->linehead + pe->tmpdev.pos) > 74) {
				FUNC4(&pe->outdev, pe->lwsp, pe->lwsplen);
			} else {
				FUNC1(0x20, &pe->outdev);
			}
		}
		FUNC0(&pe->outdev, &pe->tmpdev);
	}
	FUNC2(&pe->tmpdev);
	pe->prevpos = 0;
	pe->linehead = 0;
	pe->status1 = 0;
	pe->status2 = 0;

	return FUNC3(&pe->outdev, result);
}