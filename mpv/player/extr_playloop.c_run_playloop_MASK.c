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
struct MPContext {scalar_t__ video_status; int /*<<< orphan*/  filter_root; scalar_t__ stop_play; int /*<<< orphan*/  playback_pts; scalar_t__ lavfi; int /*<<< orphan*/  encode_lavc_ctx; } ;

/* Variables and functions */
 scalar_t__ AT_END_OF_FILE ; 
 scalar_t__ PT_QUIT ; 
 scalar_t__ STATUS_EOF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC3 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC4 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC5 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC6 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC7 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC8 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC9 (struct MPContext*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC11 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC12 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC13 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC14 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC15 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC16 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC17 (struct MPContext*) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC21 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC22 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC23 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC24 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC25 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC26 (struct MPContext*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct MPContext*) ; 

void FUNC28(struct MPContext *mpctx)
{
    if (FUNC0(mpctx->encode_lavc_ctx)) {
        mpctx->stop_play = PT_QUIT;
        return;
    }

    FUNC24(mpctx);

    FUNC5(mpctx);
    FUNC17(mpctx);
    FUNC4(mpctx);

    if (mpctx->lavfi && FUNC18(mpctx->lavfi))
        mpctx->stop_play = AT_END_OF_FILE;

    FUNC2(mpctx);
    FUNC27(mpctx);

    FUNC6(mpctx);

    FUNC13(mpctx);

    FUNC14(mpctx);

    FUNC7(mpctx);

    FUNC25(mpctx);
    if (mpctx->video_status == STATUS_EOF)
        FUNC26(mpctx, mpctx->playback_pts);

    FUNC8(mpctx);

    FUNC11(mpctx);

    FUNC10(mpctx);

    FUNC15(mpctx);

    FUNC23(mpctx);

    if (mpctx->stop_play)
        return;

    FUNC12(mpctx);

    if (FUNC19(mpctx->filter_root))
        FUNC22(mpctx);
    FUNC21(mpctx);

    FUNC16(mpctx);

    FUNC20(mpctx);

    FUNC3(mpctx);

    FUNC9(mpctx, false);

    FUNC1(mpctx);
}