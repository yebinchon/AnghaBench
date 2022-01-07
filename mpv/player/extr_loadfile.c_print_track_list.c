
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MPContext {int num_tracks; TYPE_1__** tracks; } ;
struct TYPE_2__ {int type; } ;


 int MP_INFO (struct MPContext*,char*,char const*) ;
 int STREAM_TYPE_COUNT ;
 int print_stream (struct MPContext*,TYPE_1__*) ;

void print_track_list(struct MPContext *mpctx, const char *msg)
{
    if (msg)
        MP_INFO(mpctx, "%s\n", msg);
    for (int t = 0; t < STREAM_TYPE_COUNT; t++) {
        for (int n = 0; n < mpctx->num_tracks; n++)
            if (mpctx->tracks[n]->type == t)
                print_stream(mpctx, mpctx->tracks[n]);
    }
}
