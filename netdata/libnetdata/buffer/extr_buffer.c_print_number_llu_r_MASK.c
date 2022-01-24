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
 char* FUNC0 (char*,unsigned long long) ; 

inline char *FUNC1(char *str, unsigned long long uvalue) {
    char *wstr = str;

    // print each digit
    do *wstr++ = (char)('0' + (uvalue % 10)); while((uvalue /= 10) && uvalue > (unsigned long long)0xffffffff);
    if(uvalue) return FUNC0(wstr, uvalue);
    return wstr;
}