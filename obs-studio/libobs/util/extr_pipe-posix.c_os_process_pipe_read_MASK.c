#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  file; int /*<<< orphan*/  read_pipe; } ;
typedef  TYPE_1__ os_process_pipe_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ ) ; 

size_t FUNC1(os_process_pipe_t *pp, uint8_t *data, size_t len)
{
	if (!pp) {
		return 0;
	}
	if (!pp->read_pipe) {
		return 0;
	}

	return FUNC0(data, 1, len, pp->file);
}