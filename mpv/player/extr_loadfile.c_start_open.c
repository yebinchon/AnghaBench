
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MPContext {int open_active; int open_url_flags; int open_for_prefetch; int open_thread; TYPE_1__* opts; void* open_format; void* open_url; scalar_t__ open_cancel; int open_done; int open_res_demuxer; } ;
struct TYPE_2__ {char* demuxer_name; scalar_t__ load_unsafe_playlists; scalar_t__ demuxer_thread; } ;


 int assert (int) ;
 int atomic_load (int *) ;
 int cancel_open (struct MPContext*) ;
 scalar_t__ mp_cancel_new (int *) ;
 int open_demux_thread ;
 scalar_t__ pthread_create (int *,int *,int ,struct MPContext*) ;
 void* talloc_strdup (int *,char*) ;

__attribute__((used)) static void start_open(struct MPContext *mpctx, char *url, int url_flags,
                       bool for_prefetch)
{
    cancel_open(mpctx);

    assert(!mpctx->open_active);
    assert(!mpctx->open_cancel);
    assert(!mpctx->open_res_demuxer);
    assert(!atomic_load(&mpctx->open_done));

    mpctx->open_cancel = mp_cancel_new(((void*)0));
    mpctx->open_url = talloc_strdup(((void*)0), url);
    mpctx->open_format = talloc_strdup(((void*)0), mpctx->opts->demuxer_name);
    mpctx->open_url_flags = url_flags;
    mpctx->open_for_prefetch = for_prefetch && mpctx->opts->demuxer_thread;
    if (mpctx->opts->load_unsafe_playlists)
        mpctx->open_url_flags = 0;

    if (pthread_create(&mpctx->open_thread, ((void*)0), open_demux_thread, mpctx)) {
        cancel_open(mpctx);
        return;
    }

    mpctx->open_active = 1;
}
