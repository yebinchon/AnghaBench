#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct TYPE_8__ {int /*<<< orphan*/  timestamp; } ;
typedef  TYPE_1__ sei_t ;
typedef  int /*<<< orphan*/  libcaption_stauts_t ;
typedef  scalar_t__ eia608_style_t ;
typedef  int /*<<< orphan*/  cea708_t ;
struct TYPE_9__ {int /*<<< orphan*/  timestamp; } ;
typedef  TYPE_2__ caption_frame_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_CHANNEL ; 
 char const* EIA608_CHAR_SPACE ; 
 int /*<<< orphan*/  LIBCAPTION_OK ; 
 int SCREEN_COLS ; 
 int SCREEN_ROWS ; 
 scalar_t__* FUNC0 (TYPE_2__*,int,int,scalar_t__*,int*) ; 
 int /*<<< orphan*/  cc_type_ntsc_cc_field_1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eia608_control_erase_non_displayed_memory ; 
 int /*<<< orphan*/  eia608_control_resume_caption_loading ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC10 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ eia608_style_white ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 

libcaption_stauts_t FUNC15(sei_t* sei, caption_frame_t* frame)
{
    int r, c;
    int unl, prev_unl;
    cea708_t cea708;
    const char* data;
    uint16_t prev_cc_data;
    eia608_style_t styl, prev_styl;

    FUNC14(sei, frame->timestamp);
    FUNC2(&cea708, frame->timestamp); // set up a new popon frame
    FUNC1(&cea708, 1, cc_type_ntsc_cc_field_1, FUNC3(eia608_control_erase_non_displayed_memory, DEFAULT_CHANNEL));
    FUNC1(&cea708, 1, cc_type_ntsc_cc_field_1, FUNC3(eia608_control_resume_caption_loading, DEFAULT_CHANNEL));

    for (r = 0; r < SCREEN_ROWS; ++r) {
        prev_unl = 0, prev_styl = eia608_style_white;
        // Calculate preamble
        for (c = 0; c < SCREEN_COLS && 0 == *FUNC0(frame, r, c, &styl, &unl); ++c) {
        }

        // This row is blank
        if (SCREEN_COLS == c) {
            continue;
        }

        // Write preamble
        if (0 < c || (0 == unl && eia608_style_white == styl)) {
            int tab = c % 4;
            FUNC13(sei, &cea708, FUNC10(r, c, DEFAULT_CHANNEL, 0));
            if (tab) {
                FUNC13(sei, &cea708, FUNC12(tab, DEFAULT_CHANNEL));
            }
        } else {
            FUNC13(sei, &cea708, FUNC11(r, DEFAULT_CHANNEL, styl, unl));
            prev_unl = unl, prev_styl = styl;
        }

        // Write the row
        for (prev_cc_data = 0, data = FUNC0(frame, r, c, 0, 0);
             (*data) && c < SCREEN_COLS; ++c, data = FUNC0(frame, r, c, &styl, &unl)) {
            uint16_t cc_data = FUNC5(data, DEFAULT_CHANNEL);

            if (unl != prev_unl || styl != prev_styl) {
                FUNC13(sei, &cea708, FUNC9(DEFAULT_CHANNEL, styl, unl));
                prev_unl = unl, prev_styl = styl;
            }

            if (!cc_data) {
                // We do't want to write bad data, so just ignore it.
            } else if (FUNC6(prev_cc_data)) {
                if (FUNC6(cc_data)) {
                    // previous and current chars are both basicna, combine them into current
                    FUNC13(sei, &cea708, FUNC4(prev_cc_data, cc_data));
                } else if (FUNC8(cc_data)) {
                    // extended charcters overwrite the previous charcter, so insert a dummy char thren write the extended char
                    FUNC13(sei, &cea708, FUNC4(prev_cc_data, FUNC5(EIA608_CHAR_SPACE, DEFAULT_CHANNEL)));
                    FUNC13(sei, &cea708, cc_data);
                } else {
                    // previous was basic na, but current isnt; write previous and current
                    FUNC13(sei, &cea708, prev_cc_data);
                    FUNC13(sei, &cea708, cc_data);
                }

                prev_cc_data = 0; // previous is handled, we can forget it now
            } else if (FUNC8(cc_data)) {
                // extended chars overwrite the previous chars, so insert a dummy char
                // TODO create a map of alternamt chars for eia608_is_westeu instead of using space
                FUNC13(sei, &cea708, FUNC5(EIA608_CHAR_SPACE, DEFAULT_CHANNEL));
                FUNC13(sei, &cea708, cc_data);
            } else if (FUNC6(cc_data)) {
                prev_cc_data = cc_data;
            } else {
                FUNC13(sei, &cea708, cc_data);
            }

            if (FUNC7(cc_data)) {
                // specialna are treated as control charcters. Duplicated control charcters are discarded
                // So we write a resume after a specialna as a noop to break repetition detection
                // TODO only do this if the same charcter is repeated
                FUNC13(sei, &cea708, FUNC3(eia608_control_resume_caption_loading, DEFAULT_CHANNEL));
            }
        }

        if (0 != prev_cc_data) {
            FUNC13(sei, &cea708, prev_cc_data);
        }
    }

    FUNC13(sei, &cea708, 0); // flush
    sei->timestamp = frame->timestamp; // assumes in order frames
    // sei_dump (sei);
    return LIBCAPTION_OK;
}