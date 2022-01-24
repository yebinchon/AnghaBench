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
 scalar_t__ FUNC0 (int) ; 
 size_t FUNC1 (size_t) ; 

__attribute__((used)) static inline size_t FUNC2(size_t unaligned_size)
{
    const size_t aligned_size = FUNC1(unaligned_size);

    if (FUNC0(unaligned_size >= aligned_size))
        return 0;

    return aligned_size;
}