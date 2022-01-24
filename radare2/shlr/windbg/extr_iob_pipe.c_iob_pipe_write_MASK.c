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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 scalar_t__ EPIPE ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void *p, const uint8_t *buf, const uint64_t count, const int timeout) {
	int ret = FUNC2 ((int) (size_t) p, buf, count, 0);
	if (ret < 1) {
		FUNC1 ("iob_pipe_write, send");
		if (errno == EPIPE) {
			FUNC0 (1);
		}
	}
	return ret;
}