#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_rtmp_session_t ;
struct TYPE_12__ {int valid; } ;
struct TYPE_11__ {TYPE_2__ cursor; } ;
typedef  TYPE_1__ ngx_rtmp_mp4_track_t ;
typedef  TYPE_2__ ngx_rtmp_mp4_cursor_t ;
typedef  scalar_t__ ngx_int_t ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC7(ngx_rtmp_session_t *s, ngx_rtmp_mp4_track_t *t,
                        ngx_int_t timestamp)
{
    ngx_rtmp_mp4_cursor_t          *cr;

    cr = &t->cursor;
    FUNC0(cr, sizeof(*cr));

    if (FUNC6(s, t, FUNC1(
                          t, timestamp)) != NGX_OK ||
        FUNC4(s, t)   != NGX_OK ||
        FUNC2(s, t) != NGX_OK ||
        FUNC5(s, t)  != NGX_OK ||
        FUNC3(s, t) != NGX_OK)
    {
        return NGX_ERROR;
    }

    cr->valid = 1;
    return NGX_OK;
}