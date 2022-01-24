#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t utf8_size_t ;
typedef  scalar_t__ utf8_char_t ;
typedef  scalar_t__ ssize_t ;
struct TYPE_6__ {int /*<<< orphan*/  back; int /*<<< orphan*/ * write; } ;
typedef  TYPE_1__ caption_frame_t ;

/* Variables and functions */
 int /*<<< orphan*/  SCREEN_COLS ; 
 size_t SCREEN_ROWS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__ const*) ; 
 int /*<<< orphan*/  eia608_style_white ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__ const*) ; 
 size_t FUNC4 (scalar_t__ const*) ; 
 scalar_t__ FUNC5 (scalar_t__ const*) ; 
 size_t FUNC6 (scalar_t__ const*,int /*<<< orphan*/ ) ; 

int FUNC7(caption_frame_t* frame, const utf8_char_t* data)
{
    ssize_t size = (ssize_t)FUNC3(data);
    FUNC1(frame);
    frame->write = &frame->back;

    for (size_t r = 0; (*data) && size && r < SCREEN_ROWS;) {
        // skip whitespace at start of line
        while (size && FUNC5(data)) {
            size_t s = FUNC4(data);
            data += s, size -= (ssize_t)s;
        }

        // get charcter count for wrap (or orest of line)
        utf8_size_t char_count = FUNC6(data, SCREEN_COLS);
        // write to caption frame
        for (size_t c = 0; c < char_count; ++c) {
            size_t char_length = FUNC4(data);
            FUNC2(frame, (int)r, (int)c, eia608_style_white, 0, data);
            data += char_length, size -= (ssize_t)char_length;
        }

        r += char_count ? 1 : 0; // Update row num only if not blank
    }

    FUNC0(frame);
    return 0;
}