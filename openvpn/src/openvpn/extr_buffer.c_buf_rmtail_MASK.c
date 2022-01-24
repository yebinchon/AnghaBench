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
typedef  char uint8_t ;
struct buffer {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 char* FUNC0 (struct buffer*) ; 

void
FUNC1(struct buffer *buf, uint8_t remove)
{
    uint8_t *cp = FUNC0(buf);
    if (cp && *cp == remove)
    {
        *cp = '\0';
        --buf->len;
    }
}