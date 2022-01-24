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
typedef  unsigned int BYTE ;

/* Variables and functions */
 unsigned int FUNC0 (float) ; 

__attribute__((used)) static inline BYTE FUNC1(float c)
{
    if (c <= 0.0f)
        return 0u;
    if (c >= 1.0f)
        return 0xffu;
    return FUNC0(c * 255.0f);
}