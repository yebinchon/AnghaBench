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
struct dummy_context {int /*<<< orphan*/  hrc; int /*<<< orphan*/  hdc; int /*<<< orphan*/  hwnd; } ;
typedef  int /*<<< orphan*/  PIXELFORMATDESCRIPTOR ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC9(struct dummy_context *dummy)
{
	PIXELFORMATDESCRIPTOR pfd;
	int format_index;

	if (!FUNC7())
		return false;

	dummy->hwnd = FUNC5();
	if (!dummy->hwnd)
		return false;

	dummy->hdc = FUNC1(dummy->hwnd);

	FUNC8(&pfd);
	format_index = FUNC0(dummy->hdc, &pfd);
	if (!format_index) {
		FUNC4(LOG_ERROR, "Dummy ChoosePixelFormat failed, %lu",
		     FUNC2());
		return false;
	}

	if (!FUNC3(dummy->hdc, format_index, &pfd)) {
		FUNC4(LOG_ERROR, "Dummy SetPixelFormat failed, %lu",
		     FUNC2());
		return false;
	}

	dummy->hrc = FUNC6(dummy->hdc);
	if (!dummy->hrc) {
		FUNC4(LOG_ERROR, "Failed to initialize dummy context");
		return false;
	}

	return true;
}