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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  os_process_pipe_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 

size_t FUNC1(os_process_pipe_t *pp, uint8_t *data,
				size_t len)
{
	/* XXX: unsupported on posix */
	FUNC0(pp);
	FUNC0(data);
	FUNC0(len);
	return 0;
}