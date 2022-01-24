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
struct alsa_data {int /*<<< orphan*/  abort_event; scalar_t__ reopen_thread; int /*<<< orphan*/  reopen; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 

void FUNC4(struct alsa_data *data)
{
	if (FUNC0(&data->reopen))
		FUNC2(data->abort_event);

	if (data->reopen_thread) {
		FUNC3(data->reopen_thread, NULL);
		data->reopen_thread = 0;
	}

	FUNC1(data->abort_event);
}