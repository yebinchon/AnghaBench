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
struct buffer {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct buffer*) ; 
 int* FUNC1 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*,int) ; 

__attribute__((used)) static inline int
FUNC3(struct buffer *buf)
{
    int ret;
    if (FUNC0(buf) < 1)
    {
        return -1;
    }
    ret = *FUNC1(buf);
    FUNC2(buf, 1);
    return ret;
}