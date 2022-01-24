#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int active; int reset; int kill; scalar_t__ has_audio; scalar_t__ has_video; int /*<<< orphan*/  mutex; int /*<<< orphan*/  sem; } ;
typedef  TYPE_1__ mp_media_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC12(mp_media_t *m)
{
	FUNC9("mp_media_thread");

	if (!FUNC0(m)) {
		return false;
	}
	if (!FUNC6(m)) {
		return false;
	}

	for (;;) {
		bool reset, kill, is_active;
		bool timeout = false;

		FUNC10(&m->mutex);
		is_active = m->active;
		FUNC11(&m->mutex);

		if (!is_active) {
			if (FUNC8(m->sem) < 0)
				return false;
		} else {
			timeout = FUNC7(m);
		}

		FUNC10(&m->mutex);

		reset = m->reset;
		kill = m->kill;
		m->reset = false;
		m->kill = false;

		FUNC11(&m->mutex);

		if (kill) {
			break;
		}
		if (reset) {
			FUNC6(m);
			continue;
		}

		/* frames are ready */
		if (is_active && !timeout) {
			if (m->has_video)
				FUNC4(m, false);
			if (m->has_audio)
				FUNC3(m);

			if (!FUNC5(m))
				return false;
			if (FUNC2(m))
				continue;

			FUNC1(m);
		}
	}

	return true;
}