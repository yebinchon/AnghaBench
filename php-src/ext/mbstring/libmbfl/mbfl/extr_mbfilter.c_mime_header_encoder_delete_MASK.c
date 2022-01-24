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
struct mime_header_encoder_data {int /*<<< orphan*/  tmpdev; int /*<<< orphan*/  outdev; int /*<<< orphan*/  encod_filter_backup; int /*<<< orphan*/  encod_filter; int /*<<< orphan*/  conv2_filter_backup; int /*<<< orphan*/  conv2_filter; int /*<<< orphan*/  block_filter; int /*<<< orphan*/  conv1_filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct mime_header_encoder_data *pe)
{
	if (pe) {
		FUNC0(pe->conv1_filter);
		FUNC0(pe->block_filter);
		FUNC0(pe->conv2_filter);
		FUNC0(pe->conv2_filter_backup);
		FUNC0(pe->encod_filter);
		FUNC0(pe->encod_filter_backup);
		FUNC2(&pe->outdev);
		FUNC2(&pe->tmpdev);
		FUNC1((void*)pe);
	}
}