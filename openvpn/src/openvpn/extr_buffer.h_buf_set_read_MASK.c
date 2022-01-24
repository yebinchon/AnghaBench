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
struct buffer {int len; int capacity; int /*<<< orphan*/ * data; scalar_t__ offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline void
FUNC2(struct buffer *buf, const uint8_t *data, int size)
{
    if (!FUNC1(size))
    {
        FUNC0(size);
    }
    buf->len = buf->capacity = size;
    buf->offset = 0;
    buf->data = (uint8_t *)data;
}