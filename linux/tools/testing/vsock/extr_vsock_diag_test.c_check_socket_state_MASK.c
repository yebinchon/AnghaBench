#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ vdiag_state; } ;
struct vsock_stat {TYPE_1__ msg; } ;
typedef  scalar_t__ __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC2(struct vsock_stat *st, __u8 state)
{
	if (st->msg.vdiag_state != state) {
		FUNC1(stderr, "expected socket state %#lx, got %#lx\n",
			state, st->msg.vdiag_state);
		FUNC0(EXIT_FAILURE);
	}
}