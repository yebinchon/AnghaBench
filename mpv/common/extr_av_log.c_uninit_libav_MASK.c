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
struct mpv_global {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  av_log_default_callback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_lock ; 
 struct mpv_global* log_mpv_instance ; 
 int /*<<< orphan*/  log_root ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct mpv_global *global)
{
    FUNC1(&log_lock);
    if (log_mpv_instance == global) {
        FUNC0(av_log_default_callback);
        log_mpv_instance = NULL;
        FUNC3(log_root);
    }
    FUNC2(&log_lock);
}