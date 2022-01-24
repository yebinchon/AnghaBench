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
struct obs_output {int /*<<< orphan*/  (* delay_callback ) (struct obs_output*,int /*<<< orphan*/ *) ;} ;
struct delay_data {int msg; int /*<<< orphan*/  ts; int /*<<< orphan*/  packet; } ;

/* Variables and functions */
#define  DELAY_MSG_PACKET 130 
#define  DELAY_MSG_START 129 
#define  DELAY_MSG_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct obs_output*) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_output*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct obs_output*) ; 
 int /*<<< orphan*/  FUNC4 (struct obs_output*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct obs_output*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC6(struct obs_output *output,
				      struct delay_data *dd)
{
	switch (dd->msg) {
	case DELAY_MSG_PACKET:
		if (!FUNC0(output) || !FUNC1(output))
			FUNC2(&dd->packet);
		else
			output->delay_callback(output, &dd->packet);
		break;
	case DELAY_MSG_START:
		FUNC3(output);
		break;
	case DELAY_MSG_STOP:
		FUNC4(output, false, dd->ts);
		break;
	}
}