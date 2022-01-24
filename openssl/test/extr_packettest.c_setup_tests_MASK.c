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
 unsigned int BUF_LEN ; 
 unsigned int* smbuf ; 
 int /*<<< orphan*/  test_PACKET_as_length_prefixed_1 ; 
 int /*<<< orphan*/  test_PACKET_as_length_prefixed_2 ; 
 int /*<<< orphan*/  test_PACKET_buf_init ; 
 int /*<<< orphan*/  test_PACKET_contains_zero_byte ; 
 int /*<<< orphan*/  test_PACKET_copy_all ; 
 int /*<<< orphan*/  test_PACKET_copy_bytes ; 
 int /*<<< orphan*/  test_PACKET_end ; 
 int /*<<< orphan*/  test_PACKET_equal ; 
 int /*<<< orphan*/  test_PACKET_forward ; 
 int /*<<< orphan*/  test_PACKET_get_1 ; 
 int /*<<< orphan*/  test_PACKET_get_4 ; 
 int /*<<< orphan*/  test_PACKET_get_bytes ; 
 int /*<<< orphan*/  test_PACKET_get_length_prefixed_1 ; 
 int /*<<< orphan*/  test_PACKET_get_length_prefixed_2 ; 
 int /*<<< orphan*/  test_PACKET_get_length_prefixed_3 ; 
 int /*<<< orphan*/  test_PACKET_get_net_2 ; 
 int /*<<< orphan*/  test_PACKET_get_net_3 ; 
 int /*<<< orphan*/  test_PACKET_get_net_4 ; 
 int /*<<< orphan*/  test_PACKET_get_sub_packet ; 
 int /*<<< orphan*/  test_PACKET_memdup ; 
 int /*<<< orphan*/  test_PACKET_null_init ; 
 int /*<<< orphan*/  test_PACKET_remaining ; 
 int /*<<< orphan*/  test_PACKET_strndup ; 

int FUNC1(void)
{
    unsigned int i;

    for (i = 1; i <= BUF_LEN; i++)
        smbuf[i - 1] = (i * 2) & 0xff;

    FUNC0(test_PACKET_buf_init);
    FUNC0(test_PACKET_null_init);
    FUNC0(test_PACKET_remaining);
    FUNC0(test_PACKET_end);
    FUNC0(test_PACKET_equal);
    FUNC0(test_PACKET_get_1);
    FUNC0(test_PACKET_get_4);
    FUNC0(test_PACKET_get_net_2);
    FUNC0(test_PACKET_get_net_3);
    FUNC0(test_PACKET_get_net_4);
    FUNC0(test_PACKET_get_sub_packet);
    FUNC0(test_PACKET_get_bytes);
    FUNC0(test_PACKET_copy_bytes);
    FUNC0(test_PACKET_copy_all);
    FUNC0(test_PACKET_memdup);
    FUNC0(test_PACKET_strndup);
    FUNC0(test_PACKET_contains_zero_byte);
    FUNC0(test_PACKET_forward);
    FUNC0(test_PACKET_get_length_prefixed_1);
    FUNC0(test_PACKET_get_length_prefixed_2);
    FUNC0(test_PACKET_get_length_prefixed_3);
    FUNC0(test_PACKET_as_length_prefixed_1);
    FUNC0(test_PACKET_as_length_prefixed_2);
    return 1;
}