#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int dropped_frames; scalar_t__ play_dir; void* attempt_framedrops; } ;
struct mp_frame {scalar_t__ type; int /*<<< orphan*/  member_0; } ;
struct priv {int coverart_returned; int reverse_queue_complete; int num_reverse_queue; int preroll_discard; scalar_t__ codec; TYPE_4__* f; int /*<<< orphan*/  packet; scalar_t__ reverse_queue_byte_size; int /*<<< orphan*/  end; int /*<<< orphan*/  start; TYPE_6__ public; struct demux_packet* new_segment; scalar_t__ packets_without_output; struct mp_frame decoded_coverart; TYPE_3__* header; TYPE_2__* decoder; struct mp_frame* reverse_queue; } ;
struct mp_pin {int dummy; } ;
struct demux_packet {scalar_t__ codec; int /*<<< orphan*/  end; int /*<<< orphan*/  start; scalar_t__ segmented; } ;
struct TYPE_10__ {struct mp_pin** ppins; } ;
struct TYPE_9__ {scalar_t__ attached_picture; } ;
struct TYPE_8__ {TYPE_1__* f; } ;
struct TYPE_7__ {int /*<<< orphan*/ * pins; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct demux_packet*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct mp_frame MP_EOF_FRAME ; 
 scalar_t__ MP_FRAME_EOF ; 
 int /*<<< orphan*/  MP_FRAME_PACKET ; 
 scalar_t__ MP_FRAME_VIDEO ; 
 double MP_NOPTS_VALUE ; 
 struct mp_frame MP_NO_FRAME ; 
 int /*<<< orphan*/  FUNC2 (struct priv*,struct mp_frame) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 double FUNC6 (struct mp_frame) ; 
 struct mp_frame FUNC7 (struct mp_frame) ; 
 int /*<<< orphan*/  FUNC8 (struct mp_frame*) ; 
 int /*<<< orphan*/  FUNC9 (struct mp_pin*) ; 
 int /*<<< orphan*/  FUNC10 (struct mp_pin*,struct mp_frame) ; 
 struct mp_frame FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct priv*,struct mp_frame*) ; 
 int /*<<< orphan*/  FUNC13 (struct priv*,struct mp_frame) ; 
 int /*<<< orphan*/  FUNC14 (struct priv*) ; 

__attribute__((used)) static void FUNC15(struct priv *p)
{
    struct mp_pin *pin = p->f->ppins[0];
    struct mp_frame frame = {0};

    if (!p->decoder || !FUNC9(pin))
        return;

    if (p->decoded_coverart.type) {
        if (p->coverart_returned == 0) {
            FUNC10(pin, FUNC7(p->decoded_coverart));
            p->coverart_returned = 1;
        } else if (p->coverart_returned == 1) {
            FUNC10(pin, MP_EOF_FRAME);
            p->coverart_returned = 2;
        }
        return;
    }

    if (p->reverse_queue_complete && p->num_reverse_queue) {
        frame = p->reverse_queue[p->num_reverse_queue - 1];
        p->num_reverse_queue -= 1;
        goto output_frame;
    }
    p->reverse_queue_complete = false;

    frame = FUNC11(p->decoder->f->pins[1]);
    if (!frame.type)
        return;

    if (p->header->attached_picture && frame.type == MP_FRAME_VIDEO) {
        p->decoded_coverart = frame;
        FUNC5(p->f);
        return;
    }

    if (p->public.attempt_framedrops) {
        int dropped = FUNC1(0, p->packets_without_output - 1);
        p->public.attempt_framedrops =
            FUNC1(0, p->public.attempt_framedrops - dropped);
        p->public.dropped_frames += dropped;
    }
    p->packets_without_output = 0;

    if (p->preroll_discard && frame.type != MP_FRAME_EOF) {
        double ts = FUNC6(frame);
        if (ts == MP_NOPTS_VALUE) {
            FUNC8(&frame);
            FUNC5(p->f);
            return;
        }
        p->preroll_discard = false;
    }

    bool segment_ended = FUNC12(p, &frame);

    if (p->public.play_dir < 0 && frame.type) {
        FUNC2(p, frame);
        frame = MP_NO_FRAME;
    }

    // If there's a new segment, start it as soon as we're drained/finished.
    if (segment_ended && p->new_segment) {
        struct demux_packet *new_segment = p->new_segment;
        p->new_segment = NULL;

        FUNC14(p);

        if (new_segment->segmented) {
            if (p->codec != new_segment->codec) {
                p->codec = new_segment->codec;
                if (!FUNC3(&p->public))
                    FUNC4(p->f);
            }

            p->start = new_segment->start;
            p->end = new_segment->end;
        }

        p->reverse_queue_byte_size = 0;
        p->reverse_queue_complete = p->num_reverse_queue > 0;

        p->packet = FUNC0(MP_FRAME_PACKET, new_segment);
        FUNC5(p->f);
    }

    if (!frame.type) {
        FUNC5(p->f); // make it retry
        return;
    }

output_frame:
    FUNC13(p, frame);
    FUNC10(pin, frame);
}