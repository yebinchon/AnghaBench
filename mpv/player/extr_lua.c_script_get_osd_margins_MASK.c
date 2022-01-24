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
struct mp_osd_res {int /*<<< orphan*/  mb; int /*<<< orphan*/  mr; int /*<<< orphan*/  mt; int /*<<< orphan*/  ml; } ;
struct MPContext {int /*<<< orphan*/  osd; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 struct MPContext* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mp_osd_res FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(lua_State *L)
{
    struct MPContext *mpctx = FUNC0(L);
    struct mp_osd_res vo_res = FUNC2(mpctx->osd);
    FUNC1(L, vo_res.ml);
    FUNC1(L, vo_res.mt);
    FUNC1(L, vo_res.mr);
    FUNC1(L, vo_res.mb);
    return 4;
}