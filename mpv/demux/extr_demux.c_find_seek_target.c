
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct demux_queue {struct demux_packet* head; TYPE_2__* ds; } ;
struct demux_packet {int keyframe; struct demux_packet* next; } ;
struct TYPE_4__ {TYPE_1__* sh; } ;
struct TYPE_3__ {scalar_t__ seek_preroll; } ;


 double MP_NOPTS_VALUE ;
 int SEEK_FORWARD ;
 struct demux_packet* compute_keyframe_times (struct demux_packet*,double*,int *) ;
 struct demux_packet* search_index (struct demux_queue*,double) ;

__attribute__((used)) static struct demux_packet *find_seek_target(struct demux_queue *queue,
                                             double pts, int flags)
{
    pts -= queue->ds->sh->seek_preroll;

    struct demux_packet *start = search_index(queue, pts);
    if (!start)
        start = queue->head;

    struct demux_packet *target = ((void*)0);
    struct demux_packet *next = ((void*)0);
    for (struct demux_packet *dp = start; dp; dp = next) {
        next = dp->next;
        if (!dp->keyframe)
            continue;

        double range_pts;
        next = compute_keyframe_times(dp, &range_pts, ((void*)0));

        if (range_pts == MP_NOPTS_VALUE)
            continue;

        if (flags & SEEK_FORWARD) {

            if (target)
                break;
            if (range_pts < pts)
                continue;
        } else {


            if (target && range_pts > pts)
                break;
        }

        target = dp;
    }

    return target;
}
