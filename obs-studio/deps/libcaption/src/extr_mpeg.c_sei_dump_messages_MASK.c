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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  sei_message_t ;
typedef  int /*<<< orphan*/  cea708_t ;

/* Variables and functions */
 scalar_t__ LIBCAPTION_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,double) ; 
 scalar_t__ FUNC2 (int*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ sei_type_user_data_registered_itu_t_t35 ; 
 int /*<<< orphan*/  stderr ; 

void FUNC8(sei_message_t* head, double timestamp)
{
    cea708_t cea708;
    sei_message_t* msg;
    FUNC1(&cea708, timestamp);

    for (msg = head; msg; msg = FUNC5(msg)) {
        uint8_t* data = FUNC4(msg);
        size_t size = FUNC6(msg);
        FUNC3(stderr, "-- Message %p\n-- Message Type: %ld\n-- Message Size: %d\n", data, FUNC7(msg), (int)size);

        while (size) {
            FUNC3(stderr, "%02X ", *data);
            ++data;
            --size;
        }

        FUNC3(stderr, "\n");

        if (sei_type_user_data_registered_itu_t_t35 == FUNC7(msg)) {
            if (LIBCAPTION_OK != FUNC2(FUNC4(msg), FUNC6(msg), &cea708)) {
                FUNC3(stderr, "cea708_parse error\n");
            } else {
                FUNC0(&cea708);
            }
        }
    }
}