#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct encoder_callback {int member_0; void (* member_1 ) (void*,struct encoder_packet*) ;void* member_2; } ;
struct TYPE_9__ {scalar_t__ num; } ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
struct TYPE_8__ {scalar_t__ cur_pts; int /*<<< orphan*/  pause; int /*<<< orphan*/  paused; int /*<<< orphan*/  callbacks_mutex; TYPE_5__ callbacks; TYPE_1__ context; } ;
typedef  TYPE_2__ obs_encoder_t ;

/* Variables and functions */
 size_t DARRAY_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__,struct encoder_callback*) ; 
 size_t FUNC2 (TYPE_2__*,void (*) (void*,struct encoder_packet*),void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC7(
	obs_encoder_t *encoder,
	void (*new_packet)(void *param, struct encoder_packet *packet),
	void *param)
{
	struct encoder_callback cb = {false, new_packet, param};
	bool first = false;

	if (!encoder->context.data)
		return;

	FUNC5(&encoder->callbacks_mutex);

	first = (encoder->callbacks.num == 0);

	size_t idx = FUNC2(encoder, new_packet, param);
	if (idx == DARRAY_INVALID)
		FUNC1(encoder->callbacks, &cb);

	FUNC6(&encoder->callbacks_mutex);

	if (first) {
		FUNC3(&encoder->paused, false);
		FUNC4(&encoder->pause);

		encoder->cur_pts = 0;
		FUNC0(encoder);
	}
}