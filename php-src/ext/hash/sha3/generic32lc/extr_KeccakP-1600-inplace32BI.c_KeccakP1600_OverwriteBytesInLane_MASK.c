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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,unsigned int,unsigned char const*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (void*,unsigned int,unsigned int,unsigned int) ; 

void FUNC2(void *state, unsigned int lanePosition, const unsigned char *data, unsigned int offset, unsigned int length)
{
    FUNC1(state, lanePosition, offset, length);
    FUNC0(state, lanePosition, data, offset, length);
}