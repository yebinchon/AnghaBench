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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  libcaption_stauts_t ;
typedef  int /*<<< orphan*/  caption_frame_t ;

/* Variables and functions */
 int /*<<< orphan*/  LIBCAPTION_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

libcaption_stauts_t FUNC4(caption_frame_t* frame, uint16_t cc_data)
{
    int chan;
    char char1[5], char2[5];
    size_t chars = FUNC2(cc_data, &chan, &char1[0], &char2[0]);

    if (FUNC1(cc_data)) {
        // Extended charcters replace the previous charcter for back compatibility
        FUNC0(frame);
    }

    if (0 < chars) {
        FUNC3(frame, char1);
    }

    if (1 < chars) {
        FUNC3(frame, char2);
    }

    return LIBCAPTION_OK;
}