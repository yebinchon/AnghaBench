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
typedef  size_t utf8_size_t ;
typedef  scalar_t__ utf8_char_t ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__ const*) ; 

size_t FUNC2(const utf8_char_t* data, utf8_size_t charcters)
{
    size_t l, t = 0, split_at = 0;
    for (size_t c = 0; (*data) && c < charcters; ++c) {
        l = FUNC0(data);
        t += l, data += l;
        if (!FUNC1(data)) {
            split_at = t;
        }
    }

    return split_at;
}