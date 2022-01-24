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
struct TYPE_3__ {scalar_t__ size; } ;
struct gpu_delay_filter_data {TYPE_1__ frames; } ;
struct frame {int /*<<< orphan*/  render; } ;
typedef  int /*<<< orphan*/  frame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct frame*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct gpu_delay_filter_data *f)
{
	FUNC3();
	while (f->frames.size) {
		struct frame frame;
		FUNC1(&f->frames, &frame, sizeof(frame));
		FUNC2(frame.render);
	}
	FUNC0(&f->frames);
	FUNC4();
}