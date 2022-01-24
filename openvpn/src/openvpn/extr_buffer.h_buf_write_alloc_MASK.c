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
struct buffer {int len; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*,int) ; 

__attribute__((used)) static inline uint8_t *
FUNC2(struct buffer *buf, int size)
{
    uint8_t *ret;
    if (!FUNC1(buf, size))
    {
        return NULL;
    }
    ret = FUNC0(buf) + buf->len;
    buf->len += size;
    return ret;
}