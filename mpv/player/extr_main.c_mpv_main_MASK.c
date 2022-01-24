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
struct MPContext {int is_cli; scalar_t__ stop_play; int quit_custom_rc; scalar_t__ has_quit_custom_rc; scalar_t__ files_errored; scalar_t__ files_broken; scalar_t__ files_played; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*,char const*) ; 
 scalar_t__ PT_QUIT ; 
 struct MPContext* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*) ; 
 int FUNC3 (struct MPContext*,char**) ; 
 int /*<<< orphan*/  FUNC4 (struct MPContext*) ; 

int FUNC5(int argc, char *argv[])
{
    struct MPContext *mpctx = FUNC1();
    if (!mpctx)
        return 1;

    mpctx->is_cli = true;

    char **options = argv && argv[0] ? argv + 1 : NULL; // skips program name
    int r = FUNC3(mpctx, options);
    if (r == 0)
        FUNC4(mpctx);

    int rc = 0;
    const char *reason = NULL;
    if (r < 0) {
        reason = "Fatal error";
        rc = 1;
    } else if (r > 0) {
        // nothing
    } else if (mpctx->stop_play == PT_QUIT) {
        reason = "Quit";
    } else if (mpctx->files_played) {
        if (mpctx->files_errored || mpctx->files_broken) {
            reason = "Some errors happened";
            rc = 3;
        } else {
            reason = "End of file";
        }
    } else if (mpctx->files_broken && !mpctx->files_errored) {
        reason = "Errors when loading file";
        rc = 2;
    } else if (mpctx->files_errored) {
        reason = "Interrupted by error";
        rc = 2;
    } else {
        reason = "No files played";
    }

    if (reason)
        FUNC0(mpctx, "\nExiting... (%s)\n", reason);
    if (mpctx->has_quit_custom_rc)
        rc = mpctx->quit_custom_rc;

    FUNC2(mpctx);
    return rc;
}