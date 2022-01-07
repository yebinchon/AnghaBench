
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_frame {scalar_t__ type; } ;
struct mp_filter {int * ppins; struct chain* priv; } ;
struct TYPE_2__ {int got_output_eof; int update_subtitles_ctx; int (* update_subtitles ) (int ,int ) ;} ;
struct chain {TYPE_1__ public; int filters_out; int filters_in; } ;


 scalar_t__ MP_FRAME_EOF ;
 scalar_t__ MP_FRAME_VIDEO ;
 int MP_VERBOSE (struct chain*,char*) ;
 int mp_frame_get_pts (struct mp_frame) ;
 scalar_t__ mp_pin_can_transfer_data (int ,int ) ;
 int mp_pin_in_write (int ,struct mp_frame) ;
 struct mp_frame mp_pin_out_read (int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void process(struct mp_filter *f)
{
    struct chain *p = f->priv;

    if (mp_pin_can_transfer_data(p->filters_in, f->ppins[0])) {
        struct mp_frame frame = mp_pin_out_read(f->ppins[0]);

        if (frame.type == MP_FRAME_EOF)
            MP_VERBOSE(p, "filter input EOF\n");

        if (frame.type == MP_FRAME_VIDEO && p->public.update_subtitles) {
            p->public.update_subtitles(p->public.update_subtitles_ctx,
                                       mp_frame_get_pts(frame));
        }

        mp_pin_in_write(p->filters_in, frame);
    }

    if (mp_pin_can_transfer_data(f->ppins[1], p->filters_out)) {
        struct mp_frame frame = mp_pin_out_read(p->filters_out);

        p->public.got_output_eof = frame.type == MP_FRAME_EOF;
        if (p->public.got_output_eof)
            MP_VERBOSE(p, "filter output EOF\n");

        mp_pin_in_write(f->ppins[1], frame);
    }
}
