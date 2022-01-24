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
typedef  scalar_t__ utf8_char_t ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__ const*) ; 

size_t FUNC1(const utf8_char_t* data)
{
    size_t n, len = 0;

    for (len = 0; 0 != data[len]; ++len) {
        if (0 < (n = FUNC0(data))) {
            return len + n;
        }
    }

    return len;
}