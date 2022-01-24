#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct track {size_t type; int no_default; void* lang; void* title; int /*<<< orphan*/  user_tid; } ;
struct mp_cmd_ctx {int success; TYPE_4__* args; TYPE_1__* abort; scalar_t__ priv; struct MPContext* mpctx; } ;
struct MPContext {int num_tracks; scalar_t__ playback_initialized; TYPE_2__* opts; struct track** tracks; scalar_t__ stop_play; } ;
struct TYPE_7__ {int i; char* s; } ;
struct TYPE_8__ {TYPE_3__ v; } ;
struct TYPE_6__ {int /*<<< orphan*/ ** stream_id; } ;
struct TYPE_5__ {int /*<<< orphan*/  cancel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_MARK_SELECTION ; 
 struct track* FUNC0 (struct MPContext*,int,char*) ; 
 int FUNC1 (struct MPContext*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*,size_t,struct track*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct MPContext*,char*) ; 
 void* FUNC4 (struct track*,char*) ; 

__attribute__((used)) static void FUNC5(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;
    int type = *(int *)cmd->priv;

    if (mpctx->stop_play) {
        cmd->success = false;
        return;
    }

    if (cmd->args[1].v.i == 2) {
        struct track *t = FUNC0(mpctx, type, cmd->args[0].v.s);
        if (t) {
            if (mpctx->playback_initialized) {
                FUNC2(mpctx, t->type, t, FLAG_MARK_SELECTION);
                FUNC3(mpctx, "Track switched:");
            } else {
                mpctx->opts->stream_id[0][t->type] = t->user_tid;
            }
            return;
        }
    }
    int first = FUNC1(mpctx, cmd->args[0].v.s, type,
                                     cmd->abort->cancel);
    if (first < 0) {
        cmd->success = false;
        return;
    }

    for (int n = first; n < mpctx->num_tracks; n++) {
        struct track *t = mpctx->tracks[n];
        if (cmd->args[1].v.i == 1) {
            t->no_default = true;
        } else if (n == first) {
            if (mpctx->playback_initialized) {
                FUNC2(mpctx, t->type, t, FLAG_MARK_SELECTION);
            } else {
                mpctx->opts->stream_id[0][t->type] = t->user_tid;
            }
        }
        char *title = cmd->args[2].v.s;
        if (title && title[0])
            t->title = FUNC4(t, title);
        char *lang = cmd->args[3].v.s;
        if (lang && lang[0])
            t->lang = FUNC4(t, lang);
    }

    if (mpctx->playback_initialized)
        FUNC3(mpctx, "Track added:");
}