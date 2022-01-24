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
struct MPContext {int add_osd_seek_info; int osd_show_pos; char* filename; TYPE_1__* opts; scalar_t__ video_out; } ;
struct TYPE_2__ {int term_osd; int /*<<< orphan*/  osd_duration; int /*<<< orphan*/  video_osd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OSD_BAR_SEEK ; 
 int OSD_SEEK_INFO_BAR ; 
 int OSD_SEEK_INFO_CHAPTER_TEXT ; 
 int OSD_SEEK_INFO_CURRENT_FILE ; 
 int OSD_SEEK_INFO_TEXT ; 
 char* FUNC1 (struct MPContext*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*) ; 
 double FUNC3 (struct MPContext*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct MPContext*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct MPContext*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct MPContext*,int,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(struct MPContext *mpctx)
{
    if (mpctx->add_osd_seek_info & OSD_SEEK_INFO_BAR) {
        double pos = FUNC3(mpctx, false);
        FUNC4(mpctx, OSD_BAR_SEEK, 0, 1, 0, FUNC0(pos, 0, 1));
        FUNC5(mpctx, OSD_BAR_SEEK);
    }
    if (mpctx->add_osd_seek_info & OSD_SEEK_INFO_TEXT) {
        // Never in term-osd mode
        bool video_osd = mpctx->video_out && mpctx->opts->video_osd;
        if (video_osd && mpctx->opts->term_osd != 1) {
            if (FUNC6(mpctx, 1, mpctx->opts->osd_duration, ""))
                mpctx->osd_show_pos = true;
        }
    }
    if (mpctx->add_osd_seek_info & OSD_SEEK_INFO_CHAPTER_TEXT) {
        char *chapter = FUNC1(mpctx, FUNC2(mpctx));
        FUNC6(mpctx, 1, mpctx->opts->osd_duration,
                     "Chapter: %s", chapter);
        FUNC7(chapter);
    }
    if (mpctx->add_osd_seek_info & OSD_SEEK_INFO_CURRENT_FILE) {
        if (mpctx->filename) {
            FUNC6(mpctx, 1, mpctx->opts->osd_duration, "%s",
                        mpctx->filename);
        }
    }
    mpctx->add_osd_seek_info = 0;
}