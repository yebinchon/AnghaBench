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
struct buffer {int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer*,int) ; 
 int FUNC1 (struct buffer*,struct buffer*) ; 

__attribute__((used)) static inline bool
FUNC2(struct buffer *dest,
                struct buffer *src,
                int len)
{
    if (len < 0)
    {
        return false;
    }
    if (src->len > len)
    {
        struct buffer b = *src;
        src->len = len;
        if (!FUNC0(&b, len))
        {
            return false;
        }
        return FUNC1(dest, &b);
    }
    else
    {
        return true;
    }
}