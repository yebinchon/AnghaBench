#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct playlist_entry {int dummy; } ;
struct playlist {struct playlist_entry* current; } ;
struct mp_cmd_ctx {int success; TYPE_3__* abort; TYPE_2__* args; struct MPContext* mpctx; } ;
struct MPContext {TYPE_4__* playlist; int /*<<< orphan*/  global; } ;
struct TYPE_9__ {struct playlist_entry* first; } ;
struct TYPE_8__ {int /*<<< orphan*/  cancel; } ;
struct TYPE_6__ {char* s; int i; } ;
struct TYPE_7__ {TYPE_1__ v; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*,char*) ; 
 int /*<<< orphan*/  MP_EVENT_CHANGE_PLAYLIST ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*,struct playlist_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,struct playlist*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 struct playlist* FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct MPContext*,struct playlist*) ; 
 int /*<<< orphan*/  FUNC8 (struct playlist*) ; 

__attribute__((used)) static void FUNC9(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;
    char *filename = cmd->args[0].v.s;
    bool append = cmd->args[1].v.i;

    struct playlist *pl = FUNC6(filename, cmd->abort->cancel,
                                              mpctx->global);
    if (pl) {
        FUNC7(mpctx, pl);
        struct playlist_entry *new = pl->current;
        if (!append)
            FUNC5(mpctx->playlist);
        FUNC4(mpctx->playlist, pl);
        FUNC8(pl);

        if (!append && mpctx->playlist->first)
            FUNC2(mpctx, new ? new : mpctx->playlist->first);

        FUNC1(mpctx, MP_EVENT_CHANGE_PLAYLIST, NULL);
        FUNC3(mpctx);
    } else {
        FUNC0(mpctx, "Unable to load playlist %s.\n", filename);
        cmd->success = false;
    }
}