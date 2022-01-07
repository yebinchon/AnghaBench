
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct playlist_entry {int title; int filename; struct playlist_entry* next; } ;
struct m_sub_property {char* member_0; int unavailable; int member_1; } ;
struct get_playlist_ctx {int last_index; struct playlist_entry* last_entry; struct MPContext* mpctx; } ;
struct MPContext {struct playlist_entry* playing; TYPE_1__* playlist; } ;
struct TYPE_2__ {struct playlist_entry* current; } ;


 int M_PROPERTY_ERROR ;
 int SUB_PROP_FLAG (int) ;
 int SUB_PROP_STR (int ) ;
 int m_property_read_sub (struct m_sub_property*,int,void*) ;
 struct playlist_entry* playlist_entry_from_index (TYPE_1__*,int) ;

__attribute__((used)) static int get_playlist_entry(int item, int action, void *arg, void *ctx)
{
    struct get_playlist_ctx *p = ctx;
    struct MPContext *mpctx = p->mpctx;

    struct playlist_entry *e;




    if (p->last_entry && item == p->last_index)
        e = p->last_entry;
    else if (p->last_entry && item == p->last_index + 1)
        e = p->last_entry->next;
    else
        e = playlist_entry_from_index(mpctx->playlist, item);
    p->last_index = item;
    p->last_entry = e;
    if (!e)
        return M_PROPERTY_ERROR;

    bool current = mpctx->playlist->current == e;
    bool playing = mpctx->playing == e;
    struct m_sub_property props[] = {
        {"filename", SUB_PROP_STR(e->filename)},
        {"current", SUB_PROP_FLAG(1), .unavailable = !current},
        {"playing", SUB_PROP_FLAG(1), .unavailable = !playing},
        {"title", SUB_PROP_STR(e->title), .unavailable = !e->title},
        {0}
    };

    return m_property_read_sub(props, action, arg);
}
