#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct enc_encoder {int /*<<< orphan*/  audio_size; int /*<<< orphan*/  audio_planes; TYPE_1__* context; } ;
struct audio_output_info {int /*<<< orphan*/  speakers; } ;
typedef  enum audio_format { ____Placeholder_audio_format } audio_format ;
typedef  int /*<<< orphan*/  audio_t ;
struct TYPE_2__ {int /*<<< orphan*/  sample_fmt; } ;

/* Variables and functions */
 struct audio_output_info* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct enc_encoder *enc, audio_t *audio)
{
	const struct audio_output_info *aoi;
	enum audio_format format;

	aoi = FUNC0(audio);
	format = FUNC1(enc->context->sample_fmt);

	enc->audio_planes = FUNC2(format, aoi->speakers);
	enc->audio_size = FUNC3(format, aoi->speakers, 1);
}