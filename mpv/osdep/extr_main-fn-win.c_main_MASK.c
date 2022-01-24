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
typedef  int /*<<< orphan*/  wchar_t ;

/* Variables and functions */
 int /*<<< orphan*/ ** FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char**,int,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* FUNC5 (char**,int /*<<< orphan*/ *) ; 
 int FUNC6 (int,char**) ; 
 int /*<<< orphan*/  FUNC7 (char**) ; 
 int FUNC8 () ; 

int FUNC9(int argc_, char **argv_)
{
    FUNC4();

    // If started from the console wrapper (see osdep/win32-console-wrapper.c),
    // attach to the console and set up the standard IO handles
    bool has_console = FUNC8();

    // If mpv is started from Explorer, the Run dialog or the Start Menu, it
    // will have no console and no standard IO handles. In this case, the user
    // is expecting mpv to show some UI, so enable the pseudo-GUI profile.
    bool gui = !has_console && !FUNC3();

    int argc = 0;
    wchar_t **argv = FUNC0(FUNC1(), &argc);

    int argv_len = 0;
    char **argv_u8 = NULL;

    // Build mpv's UTF-8 argv, and add the pseudo-GUI profile if necessary
    if (argc > 0 && argv[0])
        FUNC2(NULL, argv_u8, argv_len, FUNC5(argv_u8, argv[0]));
    if (gui) {
        FUNC2(NULL, argv_u8, argv_len,
                         "--player-operation-mode=pseudo-gui");
    }
    for (int i = 1; i < argc; i++)
        FUNC2(NULL, argv_u8, argv_len, FUNC5(argv_u8, argv[i]));
    FUNC2(NULL, argv_u8, argv_len, NULL);

    int ret = FUNC6(argv_len - 1, argv_u8);

    FUNC7(argv_u8);
    return ret;
}