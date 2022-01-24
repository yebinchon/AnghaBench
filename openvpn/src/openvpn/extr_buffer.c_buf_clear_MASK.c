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
struct buffer {scalar_t__ capacity; scalar_t__ offset; scalar_t__ len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC1(struct buffer *buf)
{
    if (buf->capacity > 0)
    {
        FUNC0(buf->data, buf->capacity);
    }
    buf->len = 0;
    buf->offset = 0;
}