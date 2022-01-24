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
typedef  int /*<<< orphan*/  ngx_log_t ;
struct TYPE_3__ {void* last; void* end; void* pos; void* start; } ;
typedef  TYPE_1__ ngx_buf_t ;

/* Variables and functions */
 void* FUNC0 (size_t,int /*<<< orphan*/ *) ; 
 void* FUNC1 (void*,void*,size_t) ; 

__attribute__((used)) static void
FUNC2(ngx_buf_t *b, void *data, size_t len, ngx_log_t *log)
{
    size_t  buf_len;

    if (b->last + len > b->end) {
        buf_len = 2 * (b->last - b->pos) + len;

        b->start = FUNC0(buf_len, log);
        if (b->start == NULL) {
            return;
        }

        b->last = FUNC1(b->start, b->pos, b->last - b->pos);
        b->pos = b->start;
        b->end = b->start + buf_len;
    }

    b->last = FUNC1(b->last, data, len);
}