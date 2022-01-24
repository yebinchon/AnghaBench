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
 scalar_t__ FUNC0 (char*,char*) ; 

inline int FUNC1(char *begin, char *end, size_t length) {

    if ( begin == end) {
        //Message cannot be complete when first and last address are the same
        return 0;
    }

    //This math to verify  the last is valid, because we are discarding the POST
    if (length > 4) {
        begin = end - 4;
    }

    return (FUNC0(begin, "\r\n\r\n"))?1:0;
}