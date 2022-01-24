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
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_event_handler_pt ;
struct TYPE_3__ {int /*<<< orphan*/  log; int /*<<< orphan*/  handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  ep ; 
 int /*<<< orphan*/  ngx_errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__ notify_event ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static ngx_int_t
FUNC2(ngx_event_handler_pt handler)
{
    notify_event.handler = handler;

    if (FUNC1(ep, 0, &notify_event) != 0) {
        FUNC0(NGX_LOG_ALERT, notify_event.log, ngx_errno,
                      "port_send() failed");
        return NGX_ERROR;
    }

    return NGX_OK;
}