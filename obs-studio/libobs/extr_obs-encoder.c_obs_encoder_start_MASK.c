#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  init_mutex; } ;
typedef  TYPE_1__ obs_encoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,void (*) (void*,struct encoder_packet*),void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (void (*) (void*,struct encoder_packet*),char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(obs_encoder_t *encoder,
		       void (*new_packet)(void *param,
					  struct encoder_packet *packet),
		       void *param)
{
	if (!FUNC1(encoder, "obs_encoder_start"))
		return;
	if (!FUNC2(new_packet, "obs_encoder_start"))
		return;

	FUNC3(&encoder->init_mutex);
	FUNC0(encoder, new_packet, param);
	FUNC4(&encoder->init_mutex);
}