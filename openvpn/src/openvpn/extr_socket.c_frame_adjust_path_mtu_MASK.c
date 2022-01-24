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
struct frame {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SET_MTU_UPPER_BOUND ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct frame*,scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC2(struct frame *frame, int pmtu, int proto)
{
    FUNC1(frame, pmtu - FUNC0(proto), SET_MTU_UPPER_BOUND);
}