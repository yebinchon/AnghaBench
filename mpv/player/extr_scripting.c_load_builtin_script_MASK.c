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
struct MPContext {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPV_EVENT_SHUTDOWN ; 
 int FUNC0 (struct MPContext*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*,char const*) ; 
 char* FUNC3 (void*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct MPContext *mpctx, bool enable,
                                const char *fname)
{
    void *tmp = FUNC5(NULL);
    // (The name doesn't have to match if there were conflicts with other
    // scripts, so this is on best-effort basis.)
    char *name = FUNC3(tmp, fname);
    if (enable != FUNC0(mpctx, name)) {
        if (enable) {
            FUNC2(mpctx, fname);
        } else {
            // Try to unload it by sending a shutdown event. This can be
            // unreliable, because user scripts could have clashing names, or
            // disabling and then quickly re-enabling a builtin script might
            // detect the still-terminating script as loaded.
            FUNC1(mpctx, name, 0, MPV_EVENT_SHUTDOWN, NULL);
        }
    }
    FUNC4(tmp);
}