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
struct buffer {int data; int capacity; } ;

/* Variables and functions */
 int FUNC0 (struct buffer*) ; 
 int FUNC1 (struct buffer*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

void
FUNC4(struct buffer *buf, const char *str)
{
    if (FUNC0(buf) <= 1)
    {
        int len = (int) FUNC2(str) + 1;
        if (len < FUNC1(buf))
        {
            FUNC3((char *)(buf->data + buf->capacity - len), str, len);
        }
    }
}