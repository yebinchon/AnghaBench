#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ff_packet {int /*<<< orphan*/  base; int /*<<< orphan*/ * clock; } ;
struct ff_decoder {int /*<<< orphan*/ * clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static bool FUNC2(struct ff_decoder *decoder,
                                struct ff_packet *packet)
{
	if (decoder->clock != NULL)
		FUNC1(&decoder->clock);
	decoder->clock = packet->clock;
	FUNC0(&packet->base);

	return true;
}