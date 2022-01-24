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
struct TYPE_3__ {size_t buffer_pos; int* buffer; int /*<<< orphan*/  column; int /*<<< orphan*/  last_column; int /*<<< orphan*/  line; int /*<<< orphan*/  position; } ;
typedef  TYPE_1__ stream_t ;

/* Variables and functions */
 int STREAM_STATE_EOF ; 
 int STREAM_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(stream_t *stream, int c)
{
    if(c == STREAM_STATE_EOF || c == STREAM_STATE_ERROR)
        return;

    stream->position--;
    if(c == '\n') {
        stream->line--;
        stream->column = stream->last_column;
    }
    else if(FUNC1(c))
        stream->column--;

    FUNC0(stream->buffer_pos > 0);
    stream->buffer_pos--;
    FUNC0(stream->buffer[stream->buffer_pos] == c);
}