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
struct TYPE_2__ {int num; } ;
struct slideshow {float slide_time; int restart_on_activate; int use_cut; float elapsed; int cur_item; int stop; TYPE_1__ files; scalar_t__ randomize; scalar_t__ hide; int /*<<< orphan*/  loop; int /*<<< orphan*/  transition; scalar_t__ paused; scalar_t__ manual; scalar_t__ pause_on_deactivate; } ;
typedef  int /*<<< orphan*/  obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct slideshow*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (struct slideshow*) ; 

__attribute__((used)) static void FUNC4(void *data, float seconds)
{
	struct slideshow *ss = data;

	if (!ss->transition || !ss->slide_time)
		return;

	if (ss->restart_on_activate && !ss->randomize && ss->use_cut) {
		ss->elapsed = 0.0f;
		ss->cur_item = 0;
		FUNC0(ss, false);
		ss->restart_on_activate = false;
		ss->use_cut = false;
		ss->stop = false;
		return;
	}

	if (ss->pause_on_deactivate || ss->manual || ss->stop || ss->paused)
		return;

	/* ----------------------------------------------------- */
	/* fade to transparency when the file list becomes empty */
	if (!ss->files.num) {
		obs_source_t *active_transition_source =
			FUNC2(ss->transition);

		if (active_transition_source) {
			FUNC1(active_transition_source);
			FUNC0(ss, true);
		}
	}

	/* ----------------------------------------------------- */
	/* do transition when slide time reached                 */
	ss->elapsed += seconds;

	if (ss->elapsed > ss->slide_time) {
		ss->elapsed -= ss->slide_time;

		if (!ss->loop && ss->cur_item == ss->files.num - 1) {
			if (ss->hide)
				FUNC0(ss, true);
			else
				FUNC0(ss, false);

			return;
		}

		if (ss->randomize) {
			size_t next = ss->cur_item;
			if (ss->files.num > 1) {
				while (next == ss->cur_item)
					next = FUNC3(ss);
			}
			ss->cur_item = next;

		} else if (++ss->cur_item >= ss->files.num) {
			ss->cur_item = 0;
		}

		if (ss->files.num)
			FUNC0(ss, false);
	}
}