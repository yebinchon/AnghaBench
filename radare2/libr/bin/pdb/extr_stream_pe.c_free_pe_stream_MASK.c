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
struct TYPE_2__ {int /*<<< orphan*/  sections_hdrs; } ;
typedef  TYPE_1__ SPEStream ;
typedef  int /*<<< orphan*/  SIMAGE_SECTION_HEADER ;
typedef  int /*<<< orphan*/  RListIter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(void *stream)
{
	SPEStream *pe_stream = (SPEStream *) stream;
	SIMAGE_SECTION_HEADER *sctn_header = 0;
	RListIter *it = 0;

	it = FUNC4 (pe_stream->sections_hdrs);
	while (FUNC3 (it)) {
		sctn_header = (SIMAGE_SECTION_HEADER *) FUNC2 (it);
		FUNC0 (sctn_header);
	}
	FUNC1 (pe_stream->sections_hdrs);
}