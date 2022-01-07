
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_refqueue {int second_field; int flags; size_t pos; TYPE_1__** queue; } ;
struct TYPE_2__ {double pts; } ;


 int MP_MODE_OUTPUT_FIELDS ;
 double MP_NOPTS_VALUE ;
 int assert (int) ;
 int mp_refqueue_should_deint (struct mp_refqueue*) ;

__attribute__((used)) static bool output_next_field(struct mp_refqueue *q)
{
    if (q->second_field)
        return 0;
    if (!(q->flags & MP_MODE_OUTPUT_FIELDS))
        return 0;
    if (!mp_refqueue_should_deint(q))
        return 0;

    assert(q->pos >= 0);


    if (q->pos == 0)
        return 0;

    double pts = q->queue[q->pos]->pts;
    double next_pts = q->queue[q->pos - 1]->pts;
    if (pts == MP_NOPTS_VALUE || next_pts == MP_NOPTS_VALUE)
        return 0;

    double frametime = next_pts - pts;
    if (frametime <= 0.0 || frametime >= 1.0)
        return 0;

    q->queue[q->pos]->pts = pts + frametime / 2;
    q->second_field = 1;
    return 1;
}
