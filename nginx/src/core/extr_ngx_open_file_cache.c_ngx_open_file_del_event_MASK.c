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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ use_event; TYPE_3__* event; scalar_t__ count; } ;
typedef  TYPE_1__ ngx_cached_open_file_t ;
struct TYPE_6__ {struct TYPE_6__* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_CLOSE_EVENT ; 
 int /*<<< orphan*/  NGX_FLUSH_EVENT ; 
 int /*<<< orphan*/  NGX_VNODE_EVENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC2(ngx_cached_open_file_t *file)
{
    if (file->event == NULL) {
        return;
    }

    (void) FUNC0(file->event, NGX_VNODE_EVENT,
                         file->count ? NGX_FLUSH_EVENT : NGX_CLOSE_EVENT);

    FUNC1(file->event->data);
    FUNC1(file->event);
    file->event = NULL;
    file->use_event = 0;
}