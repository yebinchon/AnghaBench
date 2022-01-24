#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ type; int /*<<< orphan*/  (* create ) (int /*<<< orphan*/ ,TYPE_3__*) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  data; int /*<<< orphan*/  settings; } ;
struct TYPE_11__ {int initialized; TYPE_2__ orig_info; TYPE_1__ context; TYPE_2__ info; } ;
typedef  TYPE_3__ obs_encoder_t ;

/* Variables and functions */
 scalar_t__ OBS_ENCODER_AUDIO ; 
 int can_reroute ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static inline bool FUNC4(obs_encoder_t *encoder)
{
	if (FUNC0(encoder))
		return true;
	if (encoder->initialized)
		return true;

	FUNC2(encoder);

	if (encoder->orig_info.create) {
		can_reroute = true;
		encoder->info = encoder->orig_info;
		encoder->context.data = encoder->orig_info.create(
			encoder->context.settings, encoder);
		can_reroute = false;
	}
	if (!encoder->context.data)
		return false;

	if (encoder->orig_info.type == OBS_ENCODER_AUDIO)
		FUNC1(encoder);

	encoder->initialized = true;
	return true;
}