
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct playlist_entry {int stream_flags; scalar_t__ filename; } ;
struct MPContext {int open_active; TYPE_1__* opts; } ;
struct TYPE_2__ {int prefetch_open; } ;


 int MP_VERBOSE (struct MPContext*,char*,scalar_t__) ;
 struct playlist_entry* mp_next_file (struct MPContext*,int,int,int) ;
 int start_open (struct MPContext*,scalar_t__,int ,int) ;

void prefetch_next(struct MPContext *mpctx)
{
    if (!mpctx->opts->prefetch_open)
        return;

    struct playlist_entry *new_entry = mp_next_file(mpctx, +1, 0, 0);
    if (new_entry && !mpctx->open_active && new_entry->filename) {
        MP_VERBOSE(mpctx, "Prefetching: %s\n", new_entry->filename);
        start_open(mpctx, new_entry->filename, new_entry->stream_flags, 1);
    }
}
