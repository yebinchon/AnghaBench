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
struct buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct buffer*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void const*,int) ; 

__attribute__((used)) static inline bool
FUNC2(struct buffer *dest, const void *src, int size)
{
    uint8_t *cp = FUNC0(dest, size);
    if (!cp)
    {
        return false;
    }
    FUNC1(cp, src, size);
    return true;
}