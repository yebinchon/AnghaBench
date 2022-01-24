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
struct wined3d_format {unsigned int* flags; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int*) ; 

__attribute__((used)) static void FUNC1(struct wined3d_format *format, unsigned int flag)
{
    unsigned int i;

    for (i = 0; i < FUNC0(format->flags); ++i)
        format->flags[i] &= ~flag;
}