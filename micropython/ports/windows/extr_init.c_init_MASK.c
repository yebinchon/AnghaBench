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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  _CRTDBG_MODE_DEBUG ; 
 int /*<<< orphan*/  _CRT_ASSERT ; 
 int /*<<< orphan*/  _CRT_ERROR ; 
 int /*<<< orphan*/  _CRT_WARN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _TWO_DIGIT_EXPONENT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  console_sighandler ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  invalid_param_handler ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7() {
#ifdef _MSC_VER
    // Disable the 'Debug Error!' dialog for assertions failures and the likes,
    // instead write messages to the debugger output and terminate.
    _CrtSetReportMode(_CRT_ASSERT, _CRTDBG_MODE_DEBUG);
    _CrtSetReportMode(_CRT_WARN, _CRTDBG_MODE_DEBUG);
    _CrtSetReportMode(_CRT_ERROR, _CRTDBG_MODE_DEBUG);

    // Disable 'invalid parameter handling' which is for instance invoked when
    // passing invalid file descriptors to functions like lseek() and make the
    // functions called behave properly by setting errno to EBADF/EINVAL/..
    _set_invalid_parameter_handler(invalid_param_handler);
#endif
    FUNC0(console_sighandler, TRUE);
    FUNC4();
#ifdef __MINGW32__
    putenv("PRINTF_EXPONENT_DIGITS=2");
#elif _MSC_VER < 1900
    // This is only necessary for Visual Studio versions 2013 and below:
    // https://msdn.microsoft.com/en-us/library/bb531344(v=vs.140).aspx
    FUNC3(_TWO_DIGIT_EXPONENT);
#endif
    FUNC6();
}