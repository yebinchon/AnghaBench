#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t alloc; size_t len; char* buf; } ;
typedef  TYPE_1__ vstr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 

char *FUNC1(vstr_t *vstr) {
    // If there's no more room, add single byte
    if (vstr->alloc == vstr->len) {
        FUNC0(vstr, 1);
    }
    vstr->buf[vstr->len] = '\0';
    return vstr->buf;
}