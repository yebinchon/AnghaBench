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
struct mountinfo {unsigned long major; unsigned long minor; struct mountinfo* next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 

struct mountinfo *FUNC1(struct mountinfo *root, unsigned long major, unsigned long minor) {
    struct mountinfo *mi;

    for(mi = root; mi ; mi = mi->next)
        if(FUNC0(mi->major == major && mi->minor == minor))
            return mi;

    return NULL;
}