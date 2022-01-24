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
typedef  scalar_t__ wchar_t ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,scalar_t__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STD_OUTPUT_HANDLE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC12(mrb_state *mrb, mrb_value obj)
{
  if (FUNC11(obj)) {
#if defined(_WIN32)
    if (isatty(fileno(stdout))) {
      DWORD written;
      int mlen = (int)RSTRING_LEN(obj);
      char* utf8 = RSTRING_PTR(obj);
      int wlen = MultiByteToWideChar(CP_UTF8, 0, utf8, mlen, NULL, 0);
      wchar_t* utf16 = (wchar_t*)mrb_malloc(mrb, (wlen+1) * sizeof(wchar_t));
      if (MultiByteToWideChar(CP_UTF8, 0, utf8, mlen, utf16, wlen) > 0) {
        utf16[wlen] = 0;
        WriteConsoleW(GetStdHandle(STD_OUTPUT_HANDLE),
          utf16, wlen, &written, NULL);
      }
      mrb_free(mrb, utf16);
    } else
#endif
      FUNC7(FUNC3(obj), FUNC2(obj), 1, stdout);
    FUNC5(stdout);
  }
}