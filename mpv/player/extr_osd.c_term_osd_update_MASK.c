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
struct MPContext {char* term_osd_subs; char* term_osd_text; char* term_osd_status; char* term_osd_contents; int /*<<< orphan*/  statusline; int /*<<< orphan*/  global; TYPE_1__* opts; } ;
struct TYPE_2__ {int /*<<< orphan*/  use_terminal; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSGL_STATUS ; 
 char* FUNC0 (struct MPContext*,char**,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(struct MPContext *mpctx)
{
    int num_parts = 0;
    char *parts[3] = {0};

    if (!mpctx->opts->use_terminal)
        return;

    if (mpctx->term_osd_subs && mpctx->term_osd_subs[0])
        parts[num_parts++] = mpctx->term_osd_subs;
    if (mpctx->term_osd_text && mpctx->term_osd_text[0])
        parts[num_parts++] = mpctx->term_osd_text;
    if (mpctx->term_osd_status && mpctx->term_osd_status[0])
        parts[num_parts++] = mpctx->term_osd_status;

    char *s = FUNC0(mpctx, parts, num_parts);

    if (FUNC3(mpctx->term_osd_contents, s) == 0 &&
        FUNC2(mpctx->global))
    {
        FUNC4(s);
    } else {
        FUNC4(mpctx->term_osd_contents);
        mpctx->term_osd_contents = s;
        FUNC1(mpctx->statusline, MSGL_STATUS, "%s", s);
    }
}