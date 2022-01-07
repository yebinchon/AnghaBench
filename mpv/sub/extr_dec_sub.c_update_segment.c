
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {scalar_t__ start; TYPE_1__* driver; int end; int codec; } ;
struct dec_sub {scalar_t__ last_vo_pts; scalar_t__ start; struct sd* new_segment; struct sd* sd; int end; int codec; } ;
struct TYPE_2__ {int (* decode ) (struct sd*,struct sd*) ;int (* uninit ) (struct sd*) ;} ;


 int MP_ERR (struct dec_sub*,char*) ;
 scalar_t__ MP_NOPTS_VALUE ;
 int MP_VERBOSE (struct dec_sub*,char*,scalar_t__,scalar_t__) ;
 struct sd* init_decoder (struct dec_sub*) ;
 int stub1 (struct sd*) ;
 int stub2 (struct sd*,struct sd*) ;
 int talloc_free (struct sd*) ;
 int update_subtitle_speed (struct dec_sub*) ;

__attribute__((used)) static void update_segment(struct dec_sub *sub)
{
    if (sub->new_segment && sub->last_vo_pts != MP_NOPTS_VALUE &&
        sub->last_vo_pts >= sub->new_segment->start)
    {
        MP_VERBOSE(sub, "Switch segment: %f at %f\n", sub->new_segment->start,
                   sub->last_vo_pts);

        sub->codec = sub->new_segment->codec;
        sub->start = sub->new_segment->start;
        sub->end = sub->new_segment->end;
        struct sd *new = init_decoder(sub);
        if (new) {
            sub->sd->driver->uninit(sub->sd);
            talloc_free(sub->sd);
            sub->sd = new;
            update_subtitle_speed(sub);
        } else {


            MP_ERR(sub, "Can't change to new codec.\n");
        }
        sub->sd->driver->decode(sub->sd, sub->new_segment);
        talloc_free(sub->new_segment);
        sub->new_segment = ((void*)0);
    }
}
