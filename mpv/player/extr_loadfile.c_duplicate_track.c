
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct track {int dummy; } ;
struct MPContext {struct track*** current_track; } ;
typedef enum stream_type { ____Placeholder_stream_type } stream_type ;



__attribute__((used)) static bool duplicate_track(struct MPContext *mpctx, int order,
                            enum stream_type type, struct track *track)
{
    for (int i = 0; i < order; i++) {
        if (mpctx->current_track[i][type] == track)
            return 1;
    }
    return 0;
}
