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
struct TYPE_2__ {int /*<<< orphan*/  hwnd; } ;
struct gs_init_data {TYPE_1__ window; } ;
struct gl_windowinfo {int /*<<< orphan*/  hdc; int /*<<< orphan*/  hwnd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct gl_windowinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct gl_windowinfo* FUNC3 (int) ; 

__attribute__((used)) static struct gl_windowinfo *FUNC4(const struct gs_init_data *info)
{
	struct gl_windowinfo *wi = FUNC3(sizeof(struct gl_windowinfo));
	wi->hwnd = info->window.hwnd;
	wi->hdc = FUNC0(wi->hwnd);

	if (!wi->hdc) {
		FUNC2(LOG_ERROR, "Unable to get device context from window");
		FUNC1(wi);
		return NULL;
	}

	return wi;
}