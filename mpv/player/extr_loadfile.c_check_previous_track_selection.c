
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPOpts {int** stream_id; } ;
struct MPContext {char* track_layout_hash; struct MPOpts* opts; } ;


 int NUM_PTRACKS ;
 int STREAM_TYPE_COUNT ;
 scalar_t__ strcmp (char*,char*) ;
 int talloc_free (char*) ;
 char* track_layout_hash (struct MPContext*) ;

__attribute__((used)) static void check_previous_track_selection(struct MPContext *mpctx)
{
    struct MPOpts *opts = mpctx->opts;

    if (!mpctx->track_layout_hash)
        return;

    char *h = track_layout_hash(mpctx);
    if (strcmp(h, mpctx->track_layout_hash) != 0) {


        for (int t = 0; t < STREAM_TYPE_COUNT; t++) {
            for (int i = 0; i < NUM_PTRACKS; i++) {
                if (opts->stream_id[i][t] >= 0)
                    opts->stream_id[i][t] = i == 0 ? -1 : -2;
            }
        }
        talloc_free(mpctx->track_layout_hash);
        mpctx->track_layout_hash = ((void*)0);
    }
    talloc_free(h);
}
