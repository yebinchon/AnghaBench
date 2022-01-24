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
typedef  int uint32 ;
struct TYPE_3__ {int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  SpinDelayStatus ;
typedef  TYPE_1__ BufferDesc ;

/* Variables and functions */
 int BM_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint32
FUNC4(BufferDesc *buf)
{
	SpinDelayStatus delayStatus;
	uint32		buf_state;

	FUNC1(&delayStatus);

	buf_state = FUNC3(&buf->state);

	while (buf_state & BM_LOCKED)
	{
		FUNC2(&delayStatus);
		buf_state = FUNC3(&buf->state);
	}

	FUNC0(&delayStatus);

	return buf_state;
}