#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_5__ {int /*<<< orphan*/  start; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ bstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 

__attribute__((used)) static wchar_t *FUNC6(void *ctx, char **argv)
{
    // argv[0] should always be quoted. Otherwise, arguments may be interpreted
    // as part of the program name. Also, it can't contain escape sequences.
    bstr cmdline = {0};
    FUNC2(NULL, &cmdline, "\"%s\"", argv[0]);

    for (int i = 1; argv[i]; i++) {
        FUNC1(NULL, &cmdline, FUNC0(" "));
        FUNC5(&cmdline, argv[i]);
    }

    wchar_t *wcmdline = FUNC3(ctx, cmdline.start);
    FUNC4(cmdline.start);
    return wcmdline;
}