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
struct vo {struct priv* priv; } ;
struct priv {int cfg_fps; } ;
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct vo *vo)
{
    struct priv *p = vo->priv;
    if (p->cfg_fps) {
        int64_t ft = 1e6 / p->cfg_fps;
        int64_t prev_vsync = FUNC1() / ft;
        int64_t target_time = (prev_vsync + 1) * ft;
        for (;;) {
            int64_t now = FUNC1();
            if (now >= target_time)
                break;
            FUNC0(target_time - now);
        }
    }
}