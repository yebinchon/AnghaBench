#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ offset; scalar_t__ len; } ;
struct stream_buf {scalar_t__ len; scalar_t__ maxlen; TYPE_1__ next; TYPE_1__ buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  D_STREAM_DEBUG ; 
 int FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline void
FUNC3(struct stream_buf *sb)
{
    /* set up 'next' for next i/o read */
    sb->next = sb->buf;
    sb->next.offset = sb->buf.offset + sb->buf.len;
    sb->next.len = (sb->len >= 0 ? sb->len : sb->maxlen) - sb->buf.len;
    FUNC2(D_STREAM_DEBUG, "STREAM: SET NEXT, buf=[%d,%d] next=[%d,%d] len=%d maxlen=%d",
         sb->buf.offset, sb->buf.len,
         sb->next.offset, sb->next.len,
         sb->len, sb->maxlen);
    FUNC0(sb->next.len > 0);
    FUNC0(FUNC1(&sb->buf, sb->next.len));
}