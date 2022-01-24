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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  libcaption_stauts_t ;
struct TYPE_3__ {scalar_t__ user_identifier; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  user_data; } ;
typedef  TYPE_1__ cea708_t ;
typedef  scalar_t__ cea708_cc_type_t ;
typedef  int /*<<< orphan*/  caption_frame_t ;

/* Variables and functions */
 scalar_t__ GA94 ; 
 int /*<<< orphan*/  LIBCAPTION_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ cc_type_ntsc_cc_field_1 ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

libcaption_stauts_t FUNC4(caption_frame_t* frame, cea708_t* cea708)
{
    int i, count = FUNC1(&cea708->user_data);
    libcaption_stauts_t status = LIBCAPTION_OK;

    if (GA94 == cea708->user_identifier) {
        for (i = 0; i < count; ++i) {
            int valid;
            cea708_cc_type_t type;
            uint16_t cc_data = FUNC2(&cea708->user_data, i, &valid, &type);

            if (valid && cc_type_ntsc_cc_field_1 == type) {
                status = FUNC3(status, FUNC0(frame, cc_data, cea708->timestamp));
            }
        }
    }

    return status;
}