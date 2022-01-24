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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int MY_BUFSIZE ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ g_hWnd ; 
 scalar_t__ s_hwnd ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void)
{
# define MY_BUFSIZE 1024 // Buffer size for console window titles.

    char pszNewWindowTitle[MY_BUFSIZE]; // Contains fabricated WindowTitle.
    char pszOldWindowTitle[MY_BUFSIZE]; // Contains original WindowTitle.

    /* Skip if it's already set. */
    if (s_hwnd != 0)
	return;

# if defined(FEAT_TITLE) && defined(WIN3264)
    /* Window handle may have been found by init code (Windows NT only) */
    if (g_hWnd != 0)
    {
	s_hwnd = g_hWnd;
	return;
    }
# endif

    FUNC1(pszOldWindowTitle, MY_BUFSIZE);

    FUNC6(pszNewWindowTitle, "%s/%d/%d",
	    pszOldWindowTitle,
	    FUNC3(),
	    FUNC2());
    FUNC4(pszNewWindowTitle);
    FUNC5(40);
    s_hwnd = FUNC0(NULL, pszNewWindowTitle);

    FUNC4(pszOldWindowTitle);
}