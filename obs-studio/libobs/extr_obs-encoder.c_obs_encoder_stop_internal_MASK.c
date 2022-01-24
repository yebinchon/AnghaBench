#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ num; } ;
struct TYPE_7__ {int initialized; int /*<<< orphan*/  init_mutex; scalar_t__ destroy_on_stop; int /*<<< orphan*/  callbacks_mutex; TYPE_6__ callbacks; } ;
typedef  TYPE_1__ obs_encoder_t ;

/* Variables and functions */
 size_t DARRAY_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__,size_t) ; 
 size_t FUNC1 (TYPE_1__*,void (*) (void*,struct encoder_packet*),void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static inline bool FUNC6(
	obs_encoder_t *encoder,
	void (*new_packet)(void *param, struct encoder_packet *packet),
	void *param)
{
	bool last = false;
	size_t idx;

	FUNC3(&encoder->callbacks_mutex);

	idx = FUNC1(encoder, new_packet, param);
	if (idx != DARRAY_INVALID) {
		FUNC0(encoder->callbacks, idx);
		last = (encoder->callbacks.num == 0);
	}

	FUNC4(&encoder->callbacks_mutex);

	if (last) {
		FUNC5(encoder, true);
		encoder->initialized = false;

		if (encoder->destroy_on_stop) {
			FUNC4(&encoder->init_mutex);
			FUNC2(encoder);
			return true;
		}
	}

	return false;
}