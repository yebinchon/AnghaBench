#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mp_osd_res {double const ml; double const mt; double const mr; double const mb; } ;
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_4__ {TYPE_1__* mpctx; } ;
struct TYPE_3__ {int /*<<< orphan*/  osd; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 struct mp_osd_res FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const* const*,double const*) ; 

__attribute__((used)) static void FUNC3(js_State *J)
{
    struct mp_osd_res r = FUNC1(FUNC0(J)->mpctx->osd);
    const char * const names[] = {"left", "top", "right", "bottom", NULL};
    const double vals[] = {r.ml, r.mt, r.mr, r.mb};
    FUNC2(J, names, vals);
}