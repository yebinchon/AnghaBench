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
typedef  int uint64_t ;
struct gpu_delay_filter_data {int interval_ns; int delay_ns; int /*<<< orphan*/  frames; int /*<<< orphan*/  target_valid; } ;
struct frame {int /*<<< orphan*/  render; } ;
typedef  int /*<<< orphan*/  frame ;

/* Variables and functions */
 int /*<<< orphan*/  GS_RGBA ; 
 int /*<<< orphan*/  GS_ZS_NONE ; 
 struct frame* FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct frame*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct gpu_delay_filter_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(struct gpu_delay_filter_data *f,
			    uint64_t new_interval_ns)
{
	if (!f->target_valid) {
		FUNC3(f);
		return;
	}

	f->interval_ns = new_interval_ns;
	size_t num = (size_t)(f->delay_ns / new_interval_ns);

	if (num > FUNC6(&f->frames)) {
		size_t prev_num = FUNC6(&f->frames);

		FUNC7();

		FUNC2(&f->frames, num * sizeof(struct frame));

		for (size_t i = prev_num; i < num; i++) {
			struct frame *frame =
				FUNC0(&f->frames, i * sizeof(*frame));
			frame->render =
				FUNC4(GS_RGBA, GS_ZS_NONE);
		}

		FUNC8();

	} else if (num < FUNC6(&f->frames)) {
		FUNC7();

		while (FUNC6(&f->frames) > num) {
			struct frame frame;
			FUNC1(&f->frames, &frame, sizeof(frame));
			FUNC5(frame.render);
		}

		FUNC8();
	}
}