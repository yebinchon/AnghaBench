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
struct CMUnitTest {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char*,struct CMUnitTest const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct CMUnitTest const FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_packet_id_write_long ; 
 int /*<<< orphan*/  test_packet_id_write_long_prepend ; 
 int /*<<< orphan*/  test_packet_id_write_long_wrap ; 
 int /*<<< orphan*/  test_packet_id_write_setup ; 
 int /*<<< orphan*/  test_packet_id_write_short ; 
 int /*<<< orphan*/  test_packet_id_write_short_prepend ; 
 int /*<<< orphan*/  test_packet_id_write_short_wrap ; 
 int /*<<< orphan*/  test_packet_id_write_teardown ; 

int
FUNC2(void) {
    const struct CMUnitTest tests[] = {
            FUNC1(test_packet_id_write_short,
                    test_packet_id_write_setup, test_packet_id_write_teardown),
            FUNC1(test_packet_id_write_long,
                    test_packet_id_write_setup, test_packet_id_write_teardown),
            FUNC1(test_packet_id_write_short_prepend,
                    test_packet_id_write_setup, test_packet_id_write_teardown),
            FUNC1(test_packet_id_write_long_prepend,
                    test_packet_id_write_setup, test_packet_id_write_teardown),
            FUNC1(test_packet_id_write_short_wrap,
                    test_packet_id_write_setup, test_packet_id_write_teardown),
            FUNC1(test_packet_id_write_long_wrap,
                    test_packet_id_write_setup, test_packet_id_write_teardown),
    };

    return FUNC0("packet_id tests", tests, NULL, NULL);
}