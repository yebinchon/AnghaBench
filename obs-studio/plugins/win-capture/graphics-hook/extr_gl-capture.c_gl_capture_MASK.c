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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {int shmem_fallback; scalar_t__ hdc; scalar_t__ base_cx; scalar_t__ base_cy; scalar_t__ using_shtex; } ;
typedef  scalar_t__ HDC ;

/* Variables and functions */
 scalar_t__ INIT_SHTEX_FAILED ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 TYPE_1__ data ; 
 scalar_t__ functions_initialized ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 () ; 

__attribute__((used)) static void FUNC10(HDC hdc)
{
	static bool critical_failure = false;

	if (critical_failure) {
		return;
	}

	if (!functions_initialized) {
		functions_initialized = FUNC9();
		if (!functions_initialized) {
			critical_failure = true;
			return;
		}
	}

	/* reset error flag */
	FUNC4();

	if (FUNC2()) {
		FUNC5();
	}
	if (FUNC1()) {
		if (FUNC6(hdc) == INIT_SHTEX_FAILED) {
			data.shmem_fallback = true;
			FUNC6(hdc);
		}
	}
	if (FUNC0() && hdc == data.hdc) {
		uint32_t new_cx;
		uint32_t new_cy;

		/* reset capture if resized */
		FUNC3(hdc, &new_cx, &new_cy);
		if (new_cx != data.base_cx || new_cy != data.base_cy) {
			if (new_cx != 0 && new_cy != 0)
				FUNC5();
			return;
		}

		if (data.using_shtex)
			FUNC8();
		else
			FUNC7();
	}
}