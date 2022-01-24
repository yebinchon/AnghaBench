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
struct vo {struct priv* priv; } ;
struct timespec {int dummy; } ;
struct priv {scalar_t__ vsync_counter; int /*<<< orphan*/  display_mutex; int /*<<< orphan*/  display_cond; int /*<<< orphan*/  reload_display; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 struct timespec FUNC0 (double) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct vo *vo)
{
    struct priv *p = vo->priv;
    FUNC2(&p->display_mutex);
    struct timespec end = FUNC0(0.050);
    int64_t old = p->vsync_counter;
    while (old == p->vsync_counter && !p->reload_display) {
        if (FUNC1(&p->display_cond, &p->display_mutex, &end))
            break;
    }
    FUNC3(&p->display_mutex);
}