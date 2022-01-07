
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int dropped_frames; scalar_t__ play_dir; void* attempt_framedrops; } ;
struct mp_frame {scalar_t__ type; int member_0; } ;
struct priv {int coverart_returned; int reverse_queue_complete; int num_reverse_queue; int preroll_discard; scalar_t__ codec; TYPE_4__* f; int packet; scalar_t__ reverse_queue_byte_size; int end; int start; TYPE_6__ public; struct demux_packet* new_segment; scalar_t__ packets_without_output; struct mp_frame decoded_coverart; TYPE_3__* header; TYPE_2__* decoder; struct mp_frame* reverse_queue; } ;
struct mp_pin {int dummy; } ;
struct demux_packet {scalar_t__ codec; int end; int start; scalar_t__ segmented; } ;
struct TYPE_10__ {struct mp_pin** ppins; } ;
struct TYPE_9__ {scalar_t__ attached_picture; } ;
struct TYPE_8__ {TYPE_1__* f; } ;
struct TYPE_7__ {int * pins; } ;


 int MAKE_FRAME (int ,struct demux_packet*) ;
 void* MPMAX (int ,scalar_t__) ;
 struct mp_frame MP_EOF_FRAME ;
 scalar_t__ MP_FRAME_EOF ;
 int MP_FRAME_PACKET ;
 scalar_t__ MP_FRAME_VIDEO ;
 double MP_NOPTS_VALUE ;
 struct mp_frame MP_NO_FRAME ;
 int enqueue_backward_frame (struct priv*,struct mp_frame) ;
 int mp_decoder_wrapper_reinit (TYPE_6__*) ;
 int mp_filter_internal_mark_failed (TYPE_4__*) ;
 int mp_filter_internal_mark_progress (TYPE_4__*) ;
 double mp_frame_get_pts (struct mp_frame) ;
 struct mp_frame mp_frame_ref (struct mp_frame) ;
 int mp_frame_unref (struct mp_frame*) ;
 int mp_pin_in_needs_data (struct mp_pin*) ;
 int mp_pin_in_write (struct mp_pin*,struct mp_frame) ;
 struct mp_frame mp_pin_out_read (int ) ;
 int process_decoded_frame (struct priv*,struct mp_frame*) ;
 int process_output_frame (struct priv*,struct mp_frame) ;
 int reset_decoder (struct priv*) ;

__attribute__((used)) static void read_frame(struct priv *p)
{
    struct mp_pin *pin = p->f->ppins[0];
    struct mp_frame frame = {0};

    if (!p->decoder || !mp_pin_in_needs_data(pin))
        return;

    if (p->decoded_coverart.type) {
        if (p->coverart_returned == 0) {
            mp_pin_in_write(pin, mp_frame_ref(p->decoded_coverart));
            p->coverart_returned = 1;
        } else if (p->coverart_returned == 1) {
            mp_pin_in_write(pin, MP_EOF_FRAME);
            p->coverart_returned = 2;
        }
        return;
    }

    if (p->reverse_queue_complete && p->num_reverse_queue) {
        frame = p->reverse_queue[p->num_reverse_queue - 1];
        p->num_reverse_queue -= 1;
        goto output_frame;
    }
    p->reverse_queue_complete = 0;

    frame = mp_pin_out_read(p->decoder->f->pins[1]);
    if (!frame.type)
        return;

    if (p->header->attached_picture && frame.type == MP_FRAME_VIDEO) {
        p->decoded_coverart = frame;
        mp_filter_internal_mark_progress(p->f);
        return;
    }

    if (p->public.attempt_framedrops) {
        int dropped = MPMAX(0, p->packets_without_output - 1);
        p->public.attempt_framedrops =
            MPMAX(0, p->public.attempt_framedrops - dropped);
        p->public.dropped_frames += dropped;
    }
    p->packets_without_output = 0;

    if (p->preroll_discard && frame.type != MP_FRAME_EOF) {
        double ts = mp_frame_get_pts(frame);
        if (ts == MP_NOPTS_VALUE) {
            mp_frame_unref(&frame);
            mp_filter_internal_mark_progress(p->f);
            return;
        }
        p->preroll_discard = 0;
    }

    bool segment_ended = process_decoded_frame(p, &frame);

    if (p->public.play_dir < 0 && frame.type) {
        enqueue_backward_frame(p, frame);
        frame = MP_NO_FRAME;
    }


    if (segment_ended && p->new_segment) {
        struct demux_packet *new_segment = p->new_segment;
        p->new_segment = ((void*)0);

        reset_decoder(p);

        if (new_segment->segmented) {
            if (p->codec != new_segment->codec) {
                p->codec = new_segment->codec;
                if (!mp_decoder_wrapper_reinit(&p->public))
                    mp_filter_internal_mark_failed(p->f);
            }

            p->start = new_segment->start;
            p->end = new_segment->end;
        }

        p->reverse_queue_byte_size = 0;
        p->reverse_queue_complete = p->num_reverse_queue > 0;

        p->packet = MAKE_FRAME(MP_FRAME_PACKET, new_segment);
        mp_filter_internal_mark_progress(p->f);
    }

    if (!frame.type) {
        mp_filter_internal_mark_progress(p->f);
        return;
    }

output_frame:
    process_output_frame(p, frame);
    mp_pin_in_write(pin, frame);
}
