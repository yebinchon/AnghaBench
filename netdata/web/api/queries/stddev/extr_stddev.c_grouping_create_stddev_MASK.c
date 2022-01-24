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
struct grouping_stddev {int dummy; } ;
struct TYPE_3__ {long group; } ;
typedef  TYPE_1__ RRDR ;
typedef  int /*<<< orphan*/  LONG_DOUBLE ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 

void *FUNC1(RRDR *r) {
    long entries = r->group;
    if(entries < 0) entries = 0;

    return FUNC0(1, sizeof(struct grouping_stddev) + entries * sizeof(LONG_DOUBLE));
}