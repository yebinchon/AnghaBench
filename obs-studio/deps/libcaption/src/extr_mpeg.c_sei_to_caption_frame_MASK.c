#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  timestamp; } ;
typedef  TYPE_1__ sei_t ;
typedef  int /*<<< orphan*/  sei_message_t ;
typedef  scalar_t__ libcaption_stauts_t ;
typedef  int /*<<< orphan*/  cea708_t ;
struct TYPE_8__ {int /*<<< orphan*/  timestamp; } ;
typedef  TYPE_2__ caption_frame_t ;

/* Variables and functions */
 scalar_t__ LIBCAPTION_OK ; 
 scalar_t__ LIBCAPTION_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ sei_type_user_data_registered_itu_t_t35 ; 

libcaption_stauts_t FUNC9(sei_t* sei, caption_frame_t* frame)
{
    cea708_t cea708;
    sei_message_t* msg;
    libcaption_stauts_t status = LIBCAPTION_OK;

    FUNC0(&cea708, frame->timestamp);

    for (msg = FUNC5(sei); msg; msg = FUNC6(msg)) {
        if (sei_type_user_data_registered_itu_t_t35 == FUNC8(msg)) {
            FUNC1(FUNC4(msg), FUNC7(msg), &cea708);
            status = FUNC3(status, FUNC2(frame, &cea708));
        }
    }

    if (LIBCAPTION_READY == status) {
        frame->timestamp = sei->timestamp;
    }

    return status;
}