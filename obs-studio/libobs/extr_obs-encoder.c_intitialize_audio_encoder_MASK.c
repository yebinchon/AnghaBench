#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
struct TYPE_3__ {int (* get_frame_size ) (int /*<<< orphan*/ ) ;} ;
struct obs_encoder {int blocksize; int framesize; int framesize_bytes; TYPE_2__ context; TYPE_1__ info; int /*<<< orphan*/  planes; int /*<<< orphan*/  samplerate; } ;
struct audio_convert_info {int /*<<< orphan*/  speakers; int /*<<< orphan*/  format; int /*<<< orphan*/  samples_per_sec; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct obs_encoder*,struct audio_convert_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct obs_encoder*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct obs_encoder *encoder)
{
	struct audio_convert_info info = {0};
	FUNC0(encoder, &info);

	encoder->samplerate = info.samples_per_sec;
	encoder->planes = FUNC1(info.format, info.speakers);
	encoder->blocksize = FUNC2(info.format, info.speakers, 1);
	encoder->framesize =
		encoder->info.get_frame_size(encoder->context.data);

	encoder->framesize_bytes = encoder->blocksize * encoder->framesize;
	FUNC3(encoder);
}