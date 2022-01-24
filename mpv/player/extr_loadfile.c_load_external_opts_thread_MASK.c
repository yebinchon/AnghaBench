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
struct mp_waiter {int dummy; } ;
struct MPContext {int /*<<< orphan*/  playback_abort; TYPE_1__* opts; } ;
struct TYPE_2__ {int /*<<< orphan*/  external_files; int /*<<< orphan*/  sub_name; int /*<<< orphan*/  audio_files; } ;

/* Variables and functions */
 int /*<<< orphan*/  STREAM_AUDIO ; 
 int /*<<< orphan*/  STREAM_SUB ; 
 int /*<<< orphan*/  STREAM_TYPE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct MPContext*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC3 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_waiter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC6 (struct MPContext*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void *p)
{
    void **a = p;
    struct MPContext *mpctx = a[0];
    struct mp_waiter *waiter = a[1];

    FUNC2(mpctx);

    FUNC1(mpctx);
    FUNC6(mpctx, mpctx->opts->audio_files, STREAM_AUDIO);
    FUNC6(mpctx, mpctx->opts->sub_name, STREAM_SUB);
    FUNC6(mpctx, mpctx->opts->external_files, STREAM_TYPE_COUNT);
    FUNC0(mpctx, mpctx->playback_abort);

    FUNC4(waiter, 0);
    FUNC5(mpctx);
    FUNC3(mpctx);
}