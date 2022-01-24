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
struct stream {unsigned int buf_end; unsigned int buf_cur; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct stream*,int) ; 

__attribute__((used)) static bool FUNC2(struct stream *s, int64_t len)
{
    while (len > 0) {
        unsigned int left = s->buf_end - s->buf_cur;
        if (!left) {
            if (!FUNC1(s, 1))
                return false;
            continue;
        }
        unsigned skip = FUNC0(len, left);
        s->buf_cur += skip;
        len -= skip;
    }
    return true;
}