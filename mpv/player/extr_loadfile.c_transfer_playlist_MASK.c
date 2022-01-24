#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct playlist_entry {int /*<<< orphan*/  filename; } ;
struct playlist {struct playlist_entry* current; scalar_t__ first; } ;
struct MPContext {TYPE_1__* playlist; } ;
struct TYPE_3__ {struct playlist_entry* current; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct playlist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct playlist_entry*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct playlist*) ; 
 int /*<<< orphan*/  FUNC4 (struct MPContext*,struct playlist*) ; 

__attribute__((used)) static void FUNC5(struct MPContext *mpctx, struct playlist *pl)
{
    if (pl->first) {
        FUNC4(mpctx, pl);
        struct playlist_entry *new = pl->current;
        if (mpctx->playlist->current)
            FUNC1(pl, mpctx->playlist->current->filename);
        FUNC3(mpctx->playlist, pl);
        // current entry is replaced
        if (mpctx->playlist->current)
            FUNC2(mpctx->playlist, mpctx->playlist->current);
        if (new)
            mpctx->playlist->current = new;
    } else {
        FUNC0(mpctx, "Empty playlist!\n");
    }
}