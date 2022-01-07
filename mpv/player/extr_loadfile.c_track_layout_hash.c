
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct track {int type; char* lang; int is_external; int default_track; int user_tid; } ;
struct MPContext {int num_tracks; struct track** tracks; } ;


 int STREAM_TYPE_COUNT ;
 char* talloc_asprintf_append_buffer (char*,char*,int,int ,int ,int ,char*) ;
 char* talloc_strdup (int *,char*) ;

__attribute__((used)) static char *track_layout_hash(struct MPContext *mpctx)
{
    char *h = talloc_strdup(((void*)0), "");
    for (int type = 0; type < STREAM_TYPE_COUNT; type++) {
        for (int n = 0; n < mpctx->num_tracks; n++) {
            struct track *track = mpctx->tracks[n];
            if (track->type != type)
                continue;
            h = talloc_asprintf_append_buffer(h, "%d-%d-%d-%d-%s\n", type,
                    track->user_tid, track->default_track, track->is_external,
                    track->lang ? track->lang : "");
        }
    }
    return h;
}
