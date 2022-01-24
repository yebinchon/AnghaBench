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
typedef  int /*<<< orphan*/  utf8_char_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/  const*) ; 

int FUNC1(const utf8_char_t* data)
{
    size_t len = 0;
    int count = 0;

    do {
        len = FUNC0(data);
        data += len;
        ++count;
    } while (0 < len);

    return count - 1;
}