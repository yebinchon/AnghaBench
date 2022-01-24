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
typedef  int /*<<< orphan*/  uint64_t ;
struct obs_output {int dummy; } ;
struct encoder_packet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct obs_output*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_output*,struct encoder_packet*,int /*<<< orphan*/ ) ; 

void FUNC3(void *data, struct encoder_packet *packet)
{
	struct obs_output *output = data;
	uint64_t t = FUNC0();
	FUNC2(output, packet, t);
	while (FUNC1(output, t))
		;
}