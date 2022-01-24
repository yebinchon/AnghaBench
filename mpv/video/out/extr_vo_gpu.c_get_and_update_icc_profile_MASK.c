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
struct gpu_priv {int /*<<< orphan*/  renderer; int /*<<< orphan*/  events; TYPE_2__* ctx; } ;
typedef  int /*<<< orphan*/  bstr ;
struct TYPE_4__ {TYPE_1__* fns; } ;
struct TYPE_3__ {int (* control ) (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpu_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gpu_priv*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct gpu_priv*,char*) ; 
 int /*<<< orphan*/  VOCTRL_GET_ICC_PROFILE ; 
 int VO_FALSE ; 
 int VO_NOTAVAIL ; 
 int VO_NOTIMPL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct gpu_priv *p)
{
    if (FUNC4(p->renderer)) {
        FUNC1(p, "Querying ICC profile...\n");
        bstr icc = FUNC3(NULL);
        int r = p->ctx->fns->control(p->ctx, &p->events, VOCTRL_GET_ICC_PROFILE, &icc);

        if (r != VO_NOTAVAIL) {
            if (r == VO_FALSE) {
                FUNC2(p, "Could not retrieve an ICC profile.\n");
            } else if (r == VO_NOTIMPL) {
                FUNC0(p, "icc-profile-auto not implemented on this platform.\n");
            }

            FUNC5(p->renderer, icc);
        }
    }
}