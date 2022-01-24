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
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 

void FUNC1 (const char *str, size_t len) {
    int32_t nslen = 0;
    const char *_str = str;

    for (int i = 0; i < len; i++) {
        if (str[i] == '\n') {
            FUNC0(_str, nslen);
            FUNC0("\r\n", 2);
            _str += nslen + 1;
            nslen = 0;
        } else {
            nslen++;
        }
    }
    if (_str < str + len) {
        FUNC0(_str, nslen);
    }
}