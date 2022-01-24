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
struct playlist_entry {int /*<<< orphan*/  title; int /*<<< orphan*/  filename; struct playlist_entry* next; } ;
struct m_sub_property {char* member_0; int unavailable; int /*<<< orphan*/  member_1; } ;
struct get_playlist_ctx {int last_index; struct playlist_entry* last_entry; struct MPContext* mpctx; } ;
struct MPContext {struct playlist_entry* playing; TYPE_1__* playlist; } ;
struct TYPE_2__ {struct playlist_entry* current; } ;

/* Variables and functions */
 int M_PROPERTY_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct m_sub_property*,int,void*) ; 
 struct playlist_entry* FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC4(int item, int action, void *arg, void *ctx)
{
    struct get_playlist_ctx *p = ctx;
    struct MPContext *mpctx = p->mpctx;

    struct playlist_entry *e;
    // This is an optimization that prevents O(n^2) behaviour when the entire
    // playlist is requested. If a request is made for the last requested entry
    // or the entry immediately following it, it can be found without a full
    // traversal of the linked list.
    if (p->last_entry && item == p->last_index)
        e = p->last_entry;
    else if (p->last_entry && item == p->last_index + 1)
        e = p->last_entry->next;
    else
        e = FUNC3(mpctx->playlist, item);
    p->last_index = item;
    p->last_entry = e;
    if (!e)
        return M_PROPERTY_ERROR;

    bool current = mpctx->playlist->current == e;
    bool playing = mpctx->playing == e;
    struct m_sub_property props[] = {
        {"filename",    FUNC1(e->filename)},
        {"current",     FUNC0(1), .unavailable = !current},
        {"playing",     FUNC0(1), .unavailable = !playing},
        {"title",       FUNC1(e->title), .unavailable = !e->title},
        {0}
    };

    return FUNC2(props, action, arg);
}