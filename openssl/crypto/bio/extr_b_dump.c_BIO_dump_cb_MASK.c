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

/* Variables and functions */
 int FUNC0 (int (*) (void const*,size_t,void*),void*,void const*,int,int /*<<< orphan*/ ) ; 

int FUNC1(int (*cb) (const void *data, size_t len, void *u),
                void *u, const void *s, int len)
{
    return FUNC0(cb, u, s, len, 0);
}