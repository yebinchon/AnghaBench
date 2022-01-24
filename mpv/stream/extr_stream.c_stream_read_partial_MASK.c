#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ buf_cur; scalar_t__ buf_end; int buffer_mask; } ;
typedef  TYPE_1__ stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,void*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (TYPE_1__*,void*,int) ; 

int FUNC5(stream_t *s, void *buf, int buf_size)
{
    FUNC0(s->buf_cur <= s->buf_end);
    FUNC0(buf_size >= 0);
    if (s->buf_cur == s->buf_end && buf_size > 0) {
        if (buf_size > (s->buffer_mask + 1) / 2) {
            // Direct read if the buffer is too small anyway.
            FUNC2(s);
            return FUNC4(s, buf, buf_size);
        }
        FUNC3(s, 1);
    }
    int res = FUNC1(s, buf, buf_size, s->buf_cur);
    s->buf_cur += res;
    return res;
}