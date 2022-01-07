
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct playlist_entry {int dummy; } ;
struct MPContext {scalar_t__ stop_play; int * encode_lavc_ctx; TYPE_1__* opts; TYPE_2__* playlist; } ;
struct TYPE_4__ {int current_was_replaced; struct playlist_entry* current; } ;
struct TYPE_3__ {int player_idle_mode; } ;


 scalar_t__ AT_END_OF_FILE ;
 int MP_VERBOSE (struct MPContext*,char*) ;
 scalar_t__ PT_ERROR ;
 scalar_t__ PT_NEXT_ENTRY ;
 scalar_t__ PT_QUIT ;
 scalar_t__ PT_STOP ;
 int assert (scalar_t__) ;
 int cancel_open (struct MPContext*) ;
 int encode_lavc_free (int *) ;
 int idle_loop (struct MPContext*) ;
 int mp_clients_all_initialized (struct MPContext*) ;
 int mp_idle (struct MPContext*) ;
 struct playlist_entry* mp_next_file (struct MPContext*,int,int,int) ;
 int mp_wakeup_core (struct MPContext*) ;
 int play_current_file (struct MPContext*) ;
 int prepare_playlist (struct MPContext*,TYPE_2__*) ;
 int uninit_audio_out (struct MPContext*) ;
 int uninit_video_out (struct MPContext*) ;

void mp_play_files(struct MPContext *mpctx)
{

    if (!mp_clients_all_initialized(mpctx)) {
        MP_VERBOSE(mpctx, "Waiting for scripts...\n");
        while (!mp_clients_all_initialized(mpctx))
            mp_idle(mpctx);
        mp_wakeup_core(mpctx);
        MP_VERBOSE(mpctx, "Done loading scripts.\n");
    }

    prepare_playlist(mpctx, mpctx->playlist);

    for (;;) {
        assert(mpctx->stop_play);
        idle_loop(mpctx);
        if (mpctx->stop_play == PT_QUIT)
            break;

        play_current_file(mpctx);
        if (mpctx->stop_play == PT_QUIT)
            break;

        struct playlist_entry *new_entry = mpctx->playlist->current;
        if (mpctx->stop_play == PT_NEXT_ENTRY || mpctx->stop_play == PT_ERROR ||
            mpctx->stop_play == AT_END_OF_FILE || mpctx->stop_play == PT_STOP)
        {
            new_entry = mp_next_file(mpctx, +1, 0, 1);
        }

        mpctx->playlist->current = new_entry;
        mpctx->playlist->current_was_replaced = 0;
        mpctx->stop_play = PT_STOP;

        if (!mpctx->playlist->current && mpctx->opts->player_idle_mode < 2)
            break;
    }

    cancel_open(mpctx);

    if (mpctx->encode_lavc_ctx) {

        uninit_audio_out(mpctx);
        uninit_video_out(mpctx);

        if (!encode_lavc_free(mpctx->encode_lavc_ctx))
            mpctx->stop_play = PT_ERROR;

        mpctx->encode_lavc_ctx = ((void*)0);
    }
}
