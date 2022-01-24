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
struct buffer {int len; int offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer*) ; 

__attribute__((used)) static inline bool
FUNC1(struct buffer *buf, int size)
{
    if (!FUNC0(buf) || size < 0 || buf->len < size)
    {
        return false;
    }
    buf->offset += size;
    buf->len -= size;
    return true;
}