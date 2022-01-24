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
struct TYPE_3__ {scalar_t__ has_st_lock; int /*<<< orphan*/  st; } ;
typedef  TYPE_1__ RRDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) inline static void FUNC4(RRDR *r) {
    if(FUNC3(!r)) {
        FUNC0("NULL value given!");
        return;
    }

    if(FUNC1(r->has_st_lock)) {
        FUNC2(r->st);
        r->has_st_lock = 0;
    }
}