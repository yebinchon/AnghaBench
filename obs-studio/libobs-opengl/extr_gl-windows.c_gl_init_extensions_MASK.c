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
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  GLAD_WGL_ARB_create_context ; 
 int /*<<< orphan*/  GLAD_WGL_ARB_create_context_profile ; 
 int /*<<< orphan*/  GLAD_WGL_ARB_pixel_format ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static bool FUNC3(HDC hdc)
{
	if (!FUNC1(hdc)) {
		FUNC0(LOG_ERROR, "Failed to load WGL entry functions.");
		return false;
	}

	if (!GLAD_WGL_ARB_pixel_format) {
		FUNC2("ARB_pixel_format");
		return false;
	}

	if (!GLAD_WGL_ARB_create_context) {
		FUNC2("ARB_create_context");
		return false;
	}

	if (!GLAD_WGL_ARB_create_context_profile) {
		FUNC2("ARB_create_context_profile");
		return false;
	}

	return true;
}