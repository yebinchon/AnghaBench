#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ state; int* buffer; size_t buffer_pos; int (* get ) (int /*<<< orphan*/ ) ;scalar_t__ column; scalar_t__ last_column; int /*<<< orphan*/  line; int /*<<< orphan*/  position; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  json_error_t ;

/* Variables and functions */
 int EOF ; 
 int STREAM_STATE_EOF ; 
 int STREAM_STATE_ERROR ; 
 scalar_t__ STREAM_STATE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(stream_t *stream, json_error_t *error)
{
    int c;

    if(stream->state != STREAM_STATE_OK)
        return stream->state;

    if(!stream->buffer[stream->buffer_pos])
    {
        c = stream->get(stream->data);
        if(c == EOF) {
            stream->state = STREAM_STATE_EOF;
            return STREAM_STATE_EOF;
        }

        stream->buffer[0] = c;
        stream->buffer_pos = 0;

        if(0x80 <= c && c <= 0xFF)
        {
            /* multi-byte UTF-8 sequence */
            size_t i, count;

            count = FUNC5(c);
            if(!count)
                goto out;

            FUNC0(count >= 2);

            for(i = 1; i < count; i++)
                stream->buffer[i] = stream->get(stream->data);

            if(!FUNC6(stream->buffer, count, NULL))
                goto out;

            stream->buffer[count] = '\0';
        }
        else
            stream->buffer[1] = '\0';
    }

    c = stream->buffer[stream->buffer_pos++];

    stream->position++;
    if(c == '\n') {
        stream->line++;
        stream->last_column = stream->column;
        stream->column = 0;
    }
    else if(FUNC5(c)) {
        /* track the Unicode character column, so increment only if
           this is the first character of a UTF-8 sequence */
        stream->column++;
    }

    return c;

out:
    stream->state = STREAM_STATE_ERROR;
    FUNC1(error, FUNC2(stream), "unable to decode byte 0x%x", c);
    return STREAM_STATE_ERROR;
}