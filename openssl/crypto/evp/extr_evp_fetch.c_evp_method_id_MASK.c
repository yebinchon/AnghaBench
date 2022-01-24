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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static uint32_t FUNC1(unsigned int operation_id, int name_id)
{
    if (!FUNC0(name_id < (1 << 24) || operation_id < (1 << 8))
        || !FUNC0(name_id > 0 && operation_id > 0))
        return 0;
    return ((name_id << 8) & 0xFFFFFF00) | (operation_id & 0x000000FF);
}