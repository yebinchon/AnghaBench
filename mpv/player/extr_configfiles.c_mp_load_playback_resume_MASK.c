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
struct MPContext {int /*<<< orphan*/  mconfig; TYPE_1__* opts; } ;
struct TYPE_2__ {int /*<<< orphan*/  position_resume; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*) ; 
 int /*<<< orphan*/  MSGL_V ; 
 int /*<<< orphan*/  M_SETOPT_PRESERVE_CMDLINE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (struct MPContext*,char const*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct MPContext*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void FUNC7(struct MPContext *mpctx, const char *file)
{
    if (!mpctx->opts->position_resume)
        return;
    char *fname = FUNC2(mpctx, file);
    if (fname && FUNC3(fname)) {
        // Never apply the saved start position to following files
        FUNC1(mpctx->mconfig, "start");
        FUNC0(mpctx, "Resuming playback. This behavior can "
               "be disabled with --no-resume-playback.\n");
        FUNC5(mpctx, fname, M_SETOPT_PRESERVE_CMDLINE, MSGL_V);
        FUNC6(fname);
    }
    FUNC4(fname);
}