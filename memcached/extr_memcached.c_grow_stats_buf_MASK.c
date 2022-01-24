#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t size; size_t offset; char* buffer; } ;
struct TYPE_6__ {TYPE_1__ stats; } ;
typedef  TYPE_2__ conn ;
struct TYPE_7__ {int /*<<< orphan*/  malloc_fails; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* FUNC3 (char*,size_t) ; 
 TYPE_3__ stats ; 

__attribute__((used)) static bool FUNC4(conn *c, size_t needed) {
    size_t nsize = c->stats.size;
    size_t available = nsize - c->stats.offset;
    bool rv = true;

    /* Special case: No buffer -- need to allocate fresh */
    if (c->stats.buffer == NULL) {
        nsize = 1024;
        available = c->stats.size = c->stats.offset = 0;
    }

    while (needed > available) {
        FUNC2(nsize > 0);
        nsize = nsize << 1;
        available = nsize - c->stats.offset;
    }

    if (nsize != c->stats.size) {
        char *ptr = FUNC3(c->stats.buffer, nsize);
        if (ptr) {
            c->stats.buffer = ptr;
            c->stats.size = nsize;
        } else {
            FUNC0();
            stats.malloc_fails++;
            FUNC1();
            rv = false;
        }
    }

    return rv;
}