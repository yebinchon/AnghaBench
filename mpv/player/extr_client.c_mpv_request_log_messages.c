
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int lock; TYPE_1__* mpctx; int * messages; } ;
typedef TYPE_2__ mpv_handle ;
struct TYPE_5__ {int global; } ;


 int MPV_ERROR_INVALID_PARAMETER ;
 int MP_LOG_BUFFER_MSGL_TERM ;
 int MSGL_MAX ;
 int MSGL_V ;
 char** mp_log_levels ;
 int mp_msg_log_buffer_destroy (int *) ;
 int * mp_msg_log_buffer_new (int ,int,int,int ,TYPE_2__*) ;
 int msg_wakeup ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ strcmp (char const*,char*) ;

int mpv_request_log_messages(mpv_handle *ctx, const char *min_level)
{
    int level = -1;
    for (int n = 0; n < MSGL_MAX + 1; n++) {
        if (mp_log_levels[n] && strcmp(min_level, mp_log_levels[n]) == 0) {
            level = n;
            break;
        }
    }
    if (strcmp(min_level, "terminal-default") == 0)
        level = MP_LOG_BUFFER_MSGL_TERM;

    if (level < 0 && strcmp(min_level, "no") != 0)
        return MPV_ERROR_INVALID_PARAMETER;

    pthread_mutex_lock(&ctx->lock);
    mp_msg_log_buffer_destroy(ctx->messages);
    ctx->messages = ((void*)0);
    if (level >= 0) {
        int size = level >= MSGL_V ? 10000 : 1000;
        ctx->messages = mp_msg_log_buffer_new(ctx->mpctx->global, size, level,
                                              msg_wakeup, ctx);
    }
    pthread_mutex_unlock(&ctx->lock);
    return 0;
}
