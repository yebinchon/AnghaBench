#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct MPContext {char* term_osd_subs; TYPE_2__* opts; scalar_t__ video_out; } ;
struct TYPE_4__ {TYPE_1__* subs_rend; } ;
struct TYPE_3__ {int /*<<< orphan*/  sub_visibility; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (struct MPContext*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct MPContext*) ; 

void FUNC4(struct MPContext *mpctx, const char *text)
{
    if (mpctx->video_out || !text || !mpctx->opts->subs_rend->sub_visibility)
        text = ""; // disable
    if (FUNC0(mpctx->term_osd_subs ? mpctx->term_osd_subs : "", text) == 0)
        return;
    FUNC1(mpctx->term_osd_subs);
    mpctx->term_osd_subs = FUNC2(mpctx, text);
    FUNC3(mpctx);
}