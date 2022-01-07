
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct demuxer {int dummy; } ;
struct MPContext {TYPE_2__* vo_chain; struct demuxer* demuxer; } ;
struct TYPE_4__ {TYPE_1__* filter; } ;
struct TYPE_3__ {double container_fps; } ;


 double get_time_length (struct MPContext*) ;

__attribute__((used)) static int get_frame_count(struct MPContext *mpctx)
{
    struct demuxer *demuxer = mpctx->demuxer;
    if (!demuxer)
        return -1;
    if (!mpctx->vo_chain)
        return -1;
    double len = get_time_length(mpctx);
    double fps = mpctx->vo_chain->filter->container_fps;
    if (len < 0 || fps <= 0)
        return 0;

    return len * fps;
}
