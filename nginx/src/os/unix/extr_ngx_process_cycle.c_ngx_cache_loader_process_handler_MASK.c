#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ngx_uint_t ;
struct TYPE_5__ {int /*<<< orphan*/  data; int /*<<< orphan*/  (* loader ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ ngx_path_t ;
typedef  int /*<<< orphan*/  ngx_event_t ;
struct TYPE_4__ {size_t nelts; TYPE_2__** elts; } ;
struct TYPE_6__ {TYPE_1__ paths; } ;
typedef  TYPE_3__ ngx_cycle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ngx_cycle ; 
 scalar_t__ ngx_quit ; 
 scalar_t__ ngx_terminate ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(ngx_event_t *ev)
{
    ngx_uint_t     i;
    ngx_path_t   **path;
    ngx_cycle_t   *cycle;

    cycle = (ngx_cycle_t *) ngx_cycle;

    path = cycle->paths.elts;
    for (i = 0; i < cycle->paths.nelts; i++) {

        if (ngx_terminate || ngx_quit) {
            break;
        }

        if (path[i]->loader) {
            path[i]->loader(path[i]->data);
            FUNC1();
        }
    }

    FUNC0(0);
}