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
 int /*<<< orphan*/  init_cond ; 
 int /*<<< orphan*/  init_count ; 
 int /*<<< orphan*/  init_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  worker_hang_lock ; 

__attribute__((used)) static void FUNC3(void) {
    FUNC1(&init_lock);
    init_count++;
    FUNC0(&init_cond);
    FUNC2(&init_lock);
    /* Force worker threads to pile up if someone wants us to */
    FUNC1(&worker_hang_lock);
    FUNC2(&worker_hang_lock);
}