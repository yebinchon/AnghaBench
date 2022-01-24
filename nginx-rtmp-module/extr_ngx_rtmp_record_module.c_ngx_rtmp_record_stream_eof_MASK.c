#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_rtmp_stream_begin_t ;
struct TYPE_7__ {TYPE_1__* connection; scalar_t__ auto_pushed; } ;
typedef  TYPE_2__ ngx_rtmp_session_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_6__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static ngx_int_t
FUNC3(ngx_rtmp_session_t *s, ngx_rtmp_stream_begin_t *v)
{
    if (s->auto_pushed) {
        goto next;
    }

    FUNC1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "record: stream_eof");

    FUNC2(s);

next:
    return FUNC0(s, v);
}