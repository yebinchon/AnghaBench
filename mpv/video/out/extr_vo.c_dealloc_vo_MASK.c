#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vo {TYPE_1__* in; struct vo* eq_opts_cache; struct vo* gl_opts_cache; struct vo* opts_cache; } ;
struct TYPE_2__ {int /*<<< orphan*/  wakeup; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vo*) ; 

__attribute__((used)) static void FUNC4(struct vo *vo)
{
    FUNC0(vo); // implicitly synchronized

    // These must be free'd before vo->in->dispatch.
    FUNC3(vo->opts_cache);
    FUNC3(vo->gl_opts_cache);
    FUNC3(vo->eq_opts_cache);

    FUNC2(&vo->in->lock);
    FUNC1(&vo->in->wakeup);
    FUNC3(vo);
}