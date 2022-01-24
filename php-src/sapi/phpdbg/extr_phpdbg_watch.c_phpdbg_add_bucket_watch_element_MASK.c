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
typedef  int /*<<< orphan*/  phpdbg_watchpoint_t ;
typedef  int /*<<< orphan*/  phpdbg_watch_element ;
typedef  int /*<<< orphan*/  Bucket ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

phpdbg_watch_element *FUNC3(Bucket *bucket, phpdbg_watch_element *element) {
	phpdbg_watchpoint_t watch;
	FUNC1(bucket, &watch);
	element = FUNC0(&watch, element);
	FUNC2(element);
	return element;
}