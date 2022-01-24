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
struct buffer {int capacity; int offset; scalar_t__ len; int /*<<< orphan*/ * data; } ;

/* Variables and functions */

__attribute__((used)) static inline bool
FUNC0(struct buffer *buf, int offset)
{
    if (offset < 0 || offset > buf->capacity || buf->data == NULL)
    {
        return false;
    }
    buf->len = 0;
    buf->offset = offset;
    return true;
}