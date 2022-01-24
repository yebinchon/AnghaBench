#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mime_header_decoder_data {int /*<<< orphan*/  tmpdev; int /*<<< orphan*/  outdev; int /*<<< orphan*/  deco_filter; int /*<<< orphan*/  conv1_filter; int /*<<< orphan*/  conv2_filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct mime_header_decoder_data *pd)
{
	if (pd) {
		FUNC0(pd->conv2_filter);
		FUNC0(pd->conv1_filter);
		FUNC0(pd->deco_filter);
		FUNC2(&pd->outdev);
		FUNC2(&pd->tmpdev);
		FUNC1((void*)pd);
	}
}