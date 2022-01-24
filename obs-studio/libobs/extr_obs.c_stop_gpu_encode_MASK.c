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
struct TYPE_4__ {int /*<<< orphan*/  num; } ;
struct obs_core_video {int /*<<< orphan*/  gpu_encoder_mutex; int /*<<< orphan*/  gpu_encode_inactive; TYPE_2__ gpu_encoders; int /*<<< orphan*/  video; int /*<<< orphan*/  gpu_encoder_active; } ;
typedef  int /*<<< orphan*/  obs_encoder_t ;
struct TYPE_3__ {struct obs_core_video video; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_core_video*) ; 
 TYPE_1__* obs ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct obs_core_video*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(obs_encoder_t *encoder)
{
	struct obs_core_video *video = &obs->video;
	bool call_free = false;

	FUNC4(&video->gpu_encoder_active);
	FUNC9(video->video);

	FUNC6(&video->gpu_encoder_mutex);
	FUNC0(video->gpu_encoders, &encoder);
	if (!video->gpu_encoders.num)
		call_free = true;
	FUNC7(&video->gpu_encoder_mutex);

	FUNC5(video->gpu_encode_inactive);

	if (call_free) {
		FUNC8(video);

		FUNC2();
		FUNC6(&video->gpu_encoder_mutex);
		FUNC1(video);
		FUNC7(&video->gpu_encoder_mutex);
		FUNC3();
	}
}