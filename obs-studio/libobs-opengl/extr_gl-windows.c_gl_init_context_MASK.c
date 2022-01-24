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
typedef  int /*<<< orphan*/ * HGLRC ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  LOG_ERROR ; 
#define  WGL_CONTEXT_CORE_PROFILE_BIT_ARB 133 
#define  WGL_CONTEXT_DEBUG_BIT_ARB 132 
#define  WGL_CONTEXT_FLAGS_ARB 131 
#define  WGL_CONTEXT_MAJOR_VERSION_ARB 130 
#define  WGL_CONTEXT_MINOR_VERSION_ARB 129 
#define  WGL_CONTEXT_PROFILE_MASK_ARB 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline HGLRC FUNC5(HDC hdc)
{
	static const int attribs[] = {
#ifdef _DEBUG
		WGL_CONTEXT_FLAGS_ARB,
		WGL_CONTEXT_DEBUG_BIT_ARB,
#endif
		WGL_CONTEXT_PROFILE_MASK_ARB,
		WGL_CONTEXT_CORE_PROFILE_BIT_ARB,
		WGL_CONTEXT_MAJOR_VERSION_ARB,
		3,
		WGL_CONTEXT_MINOR_VERSION_ARB,
		3,
		0,
		0};

	HGLRC hglrc = FUNC2(hdc, 0, attribs);
	if (!hglrc) {
		FUNC1(LOG_ERROR,
		     "wglCreateContextAttribsARB failed, "
		     "%lu",
		     FUNC0());
		return NULL;
	}

	if (!FUNC4(hdc, hglrc)) {
		FUNC3(hglrc);
		return NULL;
	}

	return hglrc;
}