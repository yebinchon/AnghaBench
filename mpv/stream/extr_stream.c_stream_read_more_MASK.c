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
struct stream {int buf_end; int buf_cur; int requested_buffer_size; int buf_start; int buffer_mask; scalar_t__ eof; int /*<<< orphan*/ * buffer; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct stream*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct stream*,int) ; 

__attribute__((used)) static bool FUNC5(struct stream *s, int forward)
{
    FUNC2(forward >= 0);

    int forward_avail = s->buf_end - s->buf_cur;
    if (forward_avail >= forward)
        return false;

    // Avoid that many small reads will lead to many low-level read calls.
    forward = FUNC0(forward, s->requested_buffer_size / 2);

    // Keep guaranteed seek-back.
    int buf_old = FUNC1(s->buf_cur - s->buf_start, s->requested_buffer_size / 2);

    if (!FUNC4(s, buf_old + forward))
        return false;

    int buf_alloc = s->buffer_mask + 1;

    FUNC2(s->buf_start <= s->buf_cur);
    FUNC2(s->buf_cur <= s->buf_end);
    FUNC2(s->buf_cur < buf_alloc * 2);
    FUNC2(s->buf_end < buf_alloc * 2);
    FUNC2(s->buf_start < buf_alloc);

    // Note: read as much as possible, even if forward is much smaller. Do
    // this because the stream buffer is supposed to set an approx. minimum
    // read size on it.
    int read = buf_alloc - buf_old - forward_avail; // free buffer past end

    int pos = s->buf_end & s->buffer_mask;
    read = FUNC1(read, buf_alloc - pos);

    // Note: if wrap-around happens, we need to make two calls. This may
    // affect latency (e.g. waiting for new data on a socket), so do only
    // 1 read call always.
    read = FUNC3(s, &s->buffer[pos], read);

    s->buf_end += read;

    // May have overwritten old data.
    if (s->buf_end - s->buf_start >= buf_alloc) {
        FUNC2(s->buf_end >= buf_alloc);

        s->buf_start = s->buf_end - buf_alloc;

        FUNC2(s->buf_start <= s->buf_cur);
        FUNC2(s->buf_cur <= s->buf_end);

        if (s->buf_start >= buf_alloc) {
            s->buf_start -= buf_alloc;
            s->buf_cur -= buf_alloc;
            s->buf_end -= buf_alloc;
        }
    }

    // Must not have overwritten guaranteed old data.
    FUNC2(s->buf_cur - s->buf_start >= buf_old);

    if (s->buf_cur < s->buf_end)
        s->eof = 0;

    return !!read;
}