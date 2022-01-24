#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* encoded_packet ) (int /*<<< orphan*/ ,struct encoder_packet*) ;} ;
struct TYPE_8__ {struct encoder_packet* array; } ;
struct obs_output {double caption_timestamp; TYPE_3__ context; TYPE_2__ info; int /*<<< orphan*/  caption_mutex; TYPE_1__* caption_head; int /*<<< orphan*/  total_frames; TYPE_4__ interleaved_packets; } ;
struct encoder_packet {scalar_t__ type; double pts; double timebase_num; scalar_t__ timebase_den; } ;
struct TYPE_5__ {double display_duration; int /*<<< orphan*/ * text; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 scalar_t__ OBS_ENCODER_VIDEO ; 
 scalar_t__ FUNC0 (struct obs_output*,struct encoder_packet*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,double,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct obs_output*,struct encoder_packet*) ; 
 int /*<<< orphan*/  FUNC4 (struct encoder_packet*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct encoder_packet*) ; 

__attribute__((used)) static inline void FUNC8(struct obs_output *output)
{
	struct encoder_packet out = output->interleaved_packets.array[0];

	/* do not send an interleaved packet if there's no packet of the
	 * opposing type of a higher timestamp in the interleave buffer.
	 * this ensures that the timestamps are monotonic */
	if (!FUNC3(output, &out))
		return;

	FUNC2(output->interleaved_packets, 0);

	if (out.type == OBS_ENCODER_VIDEO) {
		output->total_frames++;

#if BUILD_CAPTIONS
		pthread_mutex_lock(&output->caption_mutex);

		double frame_timestamp =
			(out.pts * out.timebase_num) / (double)out.timebase_den;

		if (output->caption_head &&
		    output->caption_timestamp <= frame_timestamp) {
			blog(LOG_DEBUG, "Sending caption: %f \"%s\"",
			     frame_timestamp, &output->caption_head->text[0]);

			double display_duration =
				output->caption_head->display_duration;

			if (add_caption(output, &out)) {
				output->caption_timestamp =
					frame_timestamp + display_duration;
			}
		}

		pthread_mutex_unlock(&output->caption_mutex);
#endif
	}

	output->info.encoded_packet(output->context.data, &out);
	FUNC4(&out);
}