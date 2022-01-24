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
typedef  scalar_t__ utf8_size_t ;

/* Variables and functions */
 size_t FUNC0 (char const*) ; 
 size_t FUNC1 (char const*) ; 

utf8_size_t FUNC2(const char* data, size_t size)
{
    size_t i, bytes = 0;
    utf8_size_t count = 0;

    if (0 == size) {
        size = FUNC0(data);
    }

    for (i = 0; i < size; ++count, i += bytes) {
        if (0 == (bytes = FUNC1(&data[i]))) {
            break;
        }
    }

    return count;
}