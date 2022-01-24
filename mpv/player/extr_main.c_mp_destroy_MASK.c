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
struct MPContext {int /*<<< orphan*/  abort_lock; struct MPContext* abort_list; int /*<<< orphan*/  num_abort_list; int /*<<< orphan*/  global; int /*<<< orphan*/  input; int /*<<< orphan*/  osd; int /*<<< orphan*/ * encode_lavc_ctx; int /*<<< orphan*/ * ipc_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct MPContext*,struct MPContext*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct MPContext*) ; 

void FUNC17(struct MPContext *mpctx)
{
    FUNC8(mpctx);

    FUNC9(mpctx->ipc_ctx);
    mpctx->ipc_ctx = NULL;

    FUNC14(mpctx);
    FUNC16(mpctx);

    // If it's still set here, it's an error.
    FUNC4(mpctx->encode_lavc_ctx);
    mpctx->encode_lavc_ctx = NULL;

    FUNC3(mpctx);

    FUNC5(mpctx);

    FUNC10(mpctx->osd);

#if HAVE_COCOA
    cocoa_set_input_context(NULL);
#endif

    if (FUNC1(mpctx, mpctx)) {
        FUNC13();
        FUNC1(mpctx, NULL);
    }

    FUNC6(mpctx->input);

    FUNC15(mpctx->global);

    FUNC7(mpctx->global);
    FUNC0(!mpctx->num_abort_list);
    FUNC12(mpctx->abort_list);
    FUNC11(&mpctx->abort_lock);
    FUNC12(mpctx);
}