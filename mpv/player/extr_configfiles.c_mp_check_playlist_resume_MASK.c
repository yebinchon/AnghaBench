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
struct playlist_entry {int /*<<< orphan*/  filename; struct playlist_entry* next; } ;
struct playlist {struct playlist_entry* first; } ;
struct MPContext {TYPE_1__* opts; } ;
struct TYPE_2__ {int /*<<< orphan*/  position_resume; } ;

/* Variables and functions */
 char* FUNC0 (struct MPContext*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

struct playlist_entry *FUNC3(struct MPContext *mpctx,
                                                struct playlist *playlist)
{
    if (!mpctx->opts->position_resume)
        return NULL;
    for (struct playlist_entry *e = playlist->first; e; e = e->next) {
        char *conf = FUNC0(mpctx, e->filename);
        bool exists = conf && FUNC1(conf);
        FUNC2(conf);
        if (exists)
            return e;
    }
    return NULL;
}