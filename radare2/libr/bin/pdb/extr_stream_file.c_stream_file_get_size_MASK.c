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
struct TYPE_3__ {int end; int /*<<< orphan*/  page_size; int /*<<< orphan*/  pos; } ;
typedef  TYPE_1__ R_STREAM_FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(R_STREAM_FILE *stream_file, int *data_size) {
	int pn_start = 0, off_start = 0;
	FUNC0(pn_start, off_start, stream_file->pos, stream_file->page_size);
	(void)pn_start; // hack for remove unused warning
	*data_size = stream_file->end - off_start;
}