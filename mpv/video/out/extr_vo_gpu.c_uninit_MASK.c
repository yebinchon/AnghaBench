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
struct vo {scalar_t__ hwdec_devs; struct gpu_priv* priv; } ;
struct gpu_priv {int /*<<< orphan*/  ctx; int /*<<< orphan*/  renderer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct vo *vo)
{
    struct gpu_priv *p = vo->priv;

    FUNC0(p->renderer);
    if (vo->hwdec_devs) {
        FUNC2(vo->hwdec_devs, NULL, NULL);
        FUNC1(vo->hwdec_devs);
    }
    FUNC3(&p->ctx);
}