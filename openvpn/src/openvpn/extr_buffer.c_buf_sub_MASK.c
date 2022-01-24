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
typedef  int /*<<< orphan*/  uint8_t ;
struct buffer {int capacity; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer) ; 
 int /*<<< orphan*/ * FUNC1 (struct buffer*,int) ; 
 int /*<<< orphan*/ * FUNC2 (struct buffer*,int) ; 

struct buffer
FUNC3(struct buffer *buf, int size, bool prepend)
{
    struct buffer ret;
    uint8_t *data;

    FUNC0(ret);
    data = prepend ? FUNC1(buf, size) : FUNC2(buf, size);
    if (data)
    {
        ret.capacity = size;
        ret.data = data;
    }
    return ret;
}