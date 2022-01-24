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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  buf ; 
 int /*<<< orphan*/  test_WPACKET_allocate_bytes ; 
 int /*<<< orphan*/  test_WPACKET_init ; 
 int /*<<< orphan*/  test_WPACKET_memcpy ; 
 int /*<<< orphan*/  test_WPACKET_set_flags ; 
 int /*<<< orphan*/  test_WPACKET_set_max_size ; 
 int /*<<< orphan*/  test_WPACKET_start_sub_packet ; 

int FUNC3(void)
{
    if (!FUNC2(buf = FUNC1()))
            return 0;

    FUNC0(test_WPACKET_init);
    FUNC0(test_WPACKET_set_max_size);
    FUNC0(test_WPACKET_start_sub_packet);
    FUNC0(test_WPACKET_set_flags);
    FUNC0(test_WPACKET_allocate_bytes);
    FUNC0(test_WPACKET_memcpy);
    return 1;
}