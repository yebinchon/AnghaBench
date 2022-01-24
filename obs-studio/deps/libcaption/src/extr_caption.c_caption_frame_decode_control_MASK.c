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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  libcaption_stauts_t ;
typedef  int eia608_control_t ;
struct TYPE_8__ {int rup; int /*<<< orphan*/  col; } ;
struct TYPE_9__ {TYPE_1__ state; int /*<<< orphan*/  back; int /*<<< orphan*/ * write; int /*<<< orphan*/  front; } ;
typedef  TYPE_2__ caption_frame_t ;

/* Variables and functions */
 int /*<<< orphan*/  LIBCAPTION_OK ; 
 int /*<<< orphan*/  LIBCAPTION_READY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
#define  eia608_control_alarm_off 146 
#define  eia608_control_alarm_on 145 
#define  eia608_control_backspace 144 
#define  eia608_control_carriage_return 143 
#define  eia608_control_delete_to_end_of_row 142 
#define  eia608_control_end_of_caption 141 
#define  eia608_control_erase_display_memory 140 
#define  eia608_control_erase_non_displayed_memory 139 
#define  eia608_control_resume_caption_loading 138 
#define  eia608_control_resume_direct_captioning 137 
#define  eia608_control_roll_up_2 136 
#define  eia608_control_roll_up_3 135 
#define  eia608_control_roll_up_4 134 
#define  eia608_control_text_restart 133 
#define  eia608_control_text_resume_text_display 132 
 int FUNC5 (int /*<<< orphan*/ ,int*) ; 
#define  eia608_tab_offset_0 131 
#define  eia608_tab_offset_1 130 
#define  eia608_tab_offset_2 129 
#define  eia608_tab_offset_3 128 

libcaption_stauts_t FUNC6(caption_frame_t* frame, uint16_t cc_data)
{
    int cc;
    eia608_control_t cmd = FUNC5(cc_data, &cc);

    switch (cmd) {
    // PAINT ON
    case eia608_control_resume_direct_captioning:
        frame->state.rup = 0;
        frame->write = &frame->front;
        return LIBCAPTION_OK;

    case eia608_control_erase_display_memory:
        FUNC1(&frame->front);
        return LIBCAPTION_READY;

    // ROLL-UP
    case eia608_control_roll_up_2:
        frame->state.rup = 1;
        frame->write = &frame->front;
        return LIBCAPTION_OK;

    case eia608_control_roll_up_3:
        frame->state.rup = 2;
        frame->write = &frame->front;
        return LIBCAPTION_OK;

    case eia608_control_roll_up_4:
        frame->state.rup = 3;
        frame->write = &frame->front;
        return LIBCAPTION_OK;

    case eia608_control_carriage_return:
        return FUNC2(frame);

    // Corrections (Is this only valid as part of paint on?)
    case eia608_control_backspace:
        return FUNC0(frame);
    case eia608_control_delete_to_end_of_row:
        return FUNC3(frame);

    // POP ON
    case eia608_control_resume_caption_loading:
        frame->state.rup = 0;
        frame->write = &frame->back;
        return LIBCAPTION_OK;

    case eia608_control_erase_non_displayed_memory:
        FUNC1(&frame->back);
        return LIBCAPTION_OK;

    case eia608_control_end_of_caption:
        return FUNC4(frame);

    // cursor positioning
    case eia608_tab_offset_0:
    case eia608_tab_offset_1:
    case eia608_tab_offset_2:
    case eia608_tab_offset_3:
        frame->state.col += (cmd - eia608_tab_offset_0);
        return LIBCAPTION_OK;

    // Unhandled
    default:
    case eia608_control_alarm_off:
    case eia608_control_alarm_on:
    case eia608_control_text_restart:
    case eia608_control_text_resume_text_display:
        return LIBCAPTION_OK;
    }
}