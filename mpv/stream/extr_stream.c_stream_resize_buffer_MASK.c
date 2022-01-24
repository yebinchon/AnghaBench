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
typedef  int uint32_t ;
struct stream {int buf_end; int buf_cur; int requested_buffer_size; int buffer_mask; void* buffer; int /*<<< orphan*/  buf_start; } ;

/* Variables and functions */
 int INT_MAX ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct stream*,char*,int) ; 
 int STREAM_MIN_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct stream*,void*,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct stream*,int) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 

__attribute__((used)) static bool FUNC7(struct stream *s, uint32_t new)
{
    // Keep all valid buffer.
    int old_used_len = s->buf_end - s->buf_start;
    int old_pos = s->buf_cur - s->buf_start;
    new = FUNC0(new, old_used_len);

    new = FUNC0(new, s->requested_buffer_size);

    // This much is always required.
    new = FUNC0(new, STREAM_MIN_BUFFER_SIZE);

    new = FUNC3(new);
    if (!new || new > INT_MAX / 8)
        return false;

    if (new == s->buffer_mask + 1)
        return true;

    FUNC1(s, "resize stream to %d bytes\n", new);

    void *nbuf = FUNC5(s, new);
    if (!nbuf)
        return false; // oom; tolerate it, caller needs to check if required

    int new_len = 0;
    if (s->buffer)
        new_len = FUNC4(s, nbuf, new, s->buf_start);
    FUNC2(new_len == old_used_len);
    FUNC2(old_pos <= old_used_len);
    s->buf_start = 0;
    s->buf_cur = old_pos;
    s->buf_end = new_len;

    FUNC6(s->buffer);

    s->buffer = nbuf;
    s->buffer_mask = new - 1;

    return true;
}