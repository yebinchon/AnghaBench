#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ libcaption_stauts_t ;
struct TYPE_12__ {scalar_t__ state; } ;
struct TYPE_10__ {scalar_t__ cc_data; } ;
struct TYPE_11__ {scalar_t__ status; double timestamp; int /*<<< orphan*/  write; TYPE_3__ xds; TYPE_1__ state; } ;
typedef  TYPE_2__ caption_frame_t ;

/* Variables and functions */
 scalar_t__ LIBCAPTION_ERROR ; 
 scalar_t__ LIBCAPTION_OK ; 
 scalar_t__ LIBCAPTION_READY ; 
 scalar_t__ FUNC0 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 void* FUNC14 (TYPE_3__*,scalar_t__) ; 

libcaption_stauts_t FUNC15(caption_frame_t* frame, uint16_t cc_data, double timestamp)
{
    if (!FUNC13(cc_data)) {
        frame->status = LIBCAPTION_ERROR;
        return frame->status;
    }

    if (FUNC8(cc_data)) {
        frame->status = LIBCAPTION_OK;
        return frame->status;
    }

    if (0 > frame->timestamp || LIBCAPTION_READY == frame->status) {
        frame->timestamp = timestamp;
    }

    // skip duplicate controll commands. We also skip duplicate specialna to match the behaviour of iOS/vlc
    if ((FUNC10(cc_data) || FUNC6(cc_data)) && cc_data == frame->state.cc_data) {
        frame->status = LIBCAPTION_OK;
        return frame->status;
    }

    frame->state.cc_data = cc_data;

    if (frame->xds.state) {
        frame->status = FUNC14(&frame->xds, cc_data);
    } else if (FUNC12(cc_data)) {
        frame->status = FUNC14(&frame->xds, cc_data);
    } else if (FUNC6(cc_data)) {
        frame->status = FUNC0(frame, cc_data);
    } else if (FUNC5(cc_data) || FUNC10(cc_data) || FUNC11(cc_data)) {

        // Don't decode text if we dont know what mode we are in.
        if (!frame->write) {
            frame->status = LIBCAPTION_OK;
            return frame->status;
        }

        frame->status = FUNC3(frame, cc_data);

        // If we are in paint on mode, display immiditally
        if (LIBCAPTION_OK == frame->status && FUNC4(frame)) {
            frame->status = LIBCAPTION_READY;
        }
    } else if (FUNC9(cc_data)) {
        frame->status = FUNC2(frame, cc_data);
    } else if (FUNC7(cc_data)) {
        frame->status = FUNC1(frame, cc_data);
    }

    return frame->status;
}