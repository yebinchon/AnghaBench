#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_rtmp_session_t ;
struct TYPE_9__ {int valid; } ;
struct TYPE_10__ {TYPE_1__ cursor; } ;
typedef  TYPE_2__ ngx_rtmp_mp4_track_t ;
typedef  scalar_t__ ngx_int_t ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static ngx_int_t
FUNC5(ngx_rtmp_session_t *s, ngx_rtmp_mp4_track_t *t)
{
    if (FUNC4(s, t)  != NGX_OK ||
        FUNC2(s, t)   != NGX_OK ||
        FUNC0(s, t) != NGX_OK ||
        FUNC3(s, t)  != NGX_OK ||
        FUNC1(s, t) != NGX_OK)
    {
        t->cursor.valid = 0;
        return NGX_ERROR;
    }

    t->cursor.valid = 1;
    return NGX_OK;
}