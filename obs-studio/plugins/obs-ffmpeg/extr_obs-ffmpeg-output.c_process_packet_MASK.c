#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_8__ {int /*<<< orphan*/  output; } ;
struct TYPE_9__ {TYPE_1__* array; scalar_t__ num; } ;
struct ffmpeg_output {scalar_t__ stop_ts; TYPE_3__ ff_data; int /*<<< orphan*/  total_bytes; int /*<<< orphan*/  write_mutex; TYPE_4__ packets; } ;
struct TYPE_7__ {scalar_t__ size; } ;
typedef  TYPE_1__ AVPacket ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ffmpeg_output*) ; 
 scalar_t__ FUNC6 (struct ffmpeg_output*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct ffmpeg_output*) ; 

__attribute__((used)) static int FUNC10(struct ffmpeg_output *output)
{
	AVPacket packet;
	bool new_packet = false;
	int ret;

	FUNC7(&output->write_mutex);
	if (output->packets.num) {
		packet = output->packets.array[0];
		FUNC3(output->packets, 0);
		new_packet = true;
	}
	FUNC8(&output->write_mutex);

	if (!new_packet)
		return 0;

	/*blog(LOG_DEBUG, "size = %d, flags = %lX, stream = %d, "
			"packets queued: %lu",
			packet.size, packet.flags,
			packet.stream_index, output->packets.num);*/

	if (FUNC9(output)) {
		uint64_t sys_ts = FUNC6(output, &packet);
		if (sys_ts >= output->stop_ts) {
			FUNC5(output);
			return 0;
		}
	}

	output->total_bytes += packet.size;

	ret = FUNC2(output->ff_data.output, &packet);
	if (ret < 0) {
		FUNC1(&packet);
		FUNC4(LOG_WARNING, &output->ff_data,
				 "receive_audio: Error writing packet: %s",
				 FUNC0(ret));
		return ret;
	}

	return 0;
}