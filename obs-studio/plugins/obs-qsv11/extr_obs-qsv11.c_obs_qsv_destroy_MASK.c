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
struct obs_qsv {int /*<<< orphan*/  packet_data; int /*<<< orphan*/  performance_token; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct obs_qsv*) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_qsv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *data)
{
	struct obs_qsv *obsqsv = (struct obs_qsv *)data;

	if (obsqsv) {
		FUNC3(obsqsv->performance_token);
		FUNC1(obsqsv);
		FUNC2(obsqsv->packet_data);
		FUNC0(obsqsv);
	}
}