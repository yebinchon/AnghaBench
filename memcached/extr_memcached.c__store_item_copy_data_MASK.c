#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int it_flags; scalar_t__ nbytes; } ;
typedef  TYPE_1__ item ;

/* Variables and functions */
 int ITEM_CHUNKED ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int NREAD_APPEND ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC3(int comm, item *old_it, item *new_it, item *add_it) {
    if (comm == NREAD_APPEND) {
        if (new_it->it_flags & ITEM_CHUNKED) {
            if (FUNC1(new_it, old_it, old_it->nbytes - 2) == -1 ||
                FUNC1(new_it, add_it, add_it->nbytes) == -1) {
                return -1;
            }
        } else {
            FUNC2(FUNC0(new_it), FUNC0(old_it), old_it->nbytes);
            FUNC2(FUNC0(new_it) + old_it->nbytes - 2 /* CRLF */, FUNC0(add_it), add_it->nbytes);
        }
    } else {
        /* NREAD_PREPEND */
        if (new_it->it_flags & ITEM_CHUNKED) {
            if (FUNC1(new_it, add_it, add_it->nbytes - 2) == -1 ||
                FUNC1(new_it, old_it, old_it->nbytes) == -1) {
                return -1;
            }
        } else {
            FUNC2(FUNC0(new_it), FUNC0(add_it), add_it->nbytes);
            FUNC2(FUNC0(new_it) + add_it->nbytes - 2 /* CRLF */, FUNC0(old_it), old_it->nbytes);
        }
    }
    return 0;
}