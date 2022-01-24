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
struct obs_source_frame {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_source_frame*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct obs_source_frame *frame)
{
	if (frame) {
		FUNC0(frame->data[0]);
		FUNC1(frame, 0, sizeof(*frame));
	}
}