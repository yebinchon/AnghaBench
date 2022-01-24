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
struct mp_osd_res {double w; double h; int display_par; } ;
struct MPContext {int /*<<< orphan*/  osd; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 double FUNC0 (double,int) ; 
 struct MPContext* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,double) ; 
 struct mp_osd_res FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(lua_State *L)
{
    struct MPContext *mpctx = FUNC1(L);
    struct mp_osd_res vo_res = FUNC3(mpctx->osd);
    double aspect = 1.0 * vo_res.w / FUNC0(vo_res.h, 1) /
                    (vo_res.display_par ? vo_res.display_par : 1);
    FUNC2(L, vo_res.w);
    FUNC2(L, vo_res.h);
    FUNC2(L, aspect);
    return 3;
}