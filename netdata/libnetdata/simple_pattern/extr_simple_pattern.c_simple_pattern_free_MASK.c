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
struct simple_pattern {int dummy; } ;
typedef  int /*<<< orphan*/  SIMPLE_PATTERN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct simple_pattern*) ; 

void FUNC1(SIMPLE_PATTERN *list) {
    if(!list) return;

    FUNC0(((struct simple_pattern *)list));
}