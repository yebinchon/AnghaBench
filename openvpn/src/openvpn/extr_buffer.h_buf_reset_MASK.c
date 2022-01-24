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
struct buffer {int /*<<< orphan*/ * data; scalar_t__ len; scalar_t__ offset; scalar_t__ capacity; } ;

/* Variables and functions */

__attribute__((used)) static inline void
FUNC0(struct buffer *buf)
{
    buf->capacity = 0;
    buf->offset = 0;
    buf->len = 0;
    buf->data = NULL;
}