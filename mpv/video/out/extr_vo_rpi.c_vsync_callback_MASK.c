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
struct priv {int vsync_counter; int /*<<< orphan*/  display_mutex; int /*<<< orphan*/  display_cond; } ;
typedef  int /*<<< orphan*/  DISPMANX_UPDATE_HANDLE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(DISPMANX_UPDATE_HANDLE_T u, void *arg)
{
    struct vo *vo = arg;
    struct priv *p = vo->priv;
    FUNC1(&p->display_mutex);
    p->vsync_counter += 1;
    FUNC0(&p->display_cond);
    FUNC2(&p->display_mutex);
}