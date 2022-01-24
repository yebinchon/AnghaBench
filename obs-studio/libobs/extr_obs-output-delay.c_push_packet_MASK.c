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
struct obs_output {int /*<<< orphan*/  delay_mutex; int /*<<< orphan*/  delay_data; } ;
struct encoder_packet {int dummy; } ;
struct delay_data {int /*<<< orphan*/  packet; int /*<<< orphan*/  ts; int /*<<< orphan*/  msg; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  dd ;

/* Variables and functions */
 int /*<<< orphan*/  DELAY_MSG_PACKET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct delay_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct encoder_packet*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct obs_output *output,
			       struct encoder_packet *packet, uint64_t t)
{
	struct delay_data dd = {0};

	dd.msg = DELAY_MSG_PACKET;
	dd.ts = t;
	FUNC1(&dd.packet, packet);

	FUNC2(&output->delay_mutex);
	FUNC0(&output->delay_data, &dd, sizeof(dd));
	FUNC3(&output->delay_mutex);
}