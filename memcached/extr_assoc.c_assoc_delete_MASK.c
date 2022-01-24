#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {struct TYPE_3__* h_next; } ;
typedef  TYPE_1__ item ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,size_t const) ; 
 TYPE_1__** FUNC1 (char const*,size_t const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(const char *key, const size_t nkey, const uint32_t hv) {
    item **before = FUNC1(key, nkey, hv);

    if (*before) {
        item *nxt;
        /* The DTrace probe cannot be triggered as the last instruction
         * due to possible tail-optimization by the compiler
         */
        FUNC0(key, nkey);
        nxt = (*before)->h_next;
        (*before)->h_next = 0;   /* probably pointless, but whatever. */
        *before = nxt;
        return;
    }
    /* Note:  we never actually get here.  the callers don't delete things
       they can't find. */
    FUNC2(*before != 0);
}