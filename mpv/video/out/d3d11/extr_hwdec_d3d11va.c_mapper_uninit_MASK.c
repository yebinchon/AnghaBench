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
struct ra_hwdec_mapper {int /*<<< orphan*/ * tex; int /*<<< orphan*/  ra; struct priv* priv; } ;
struct priv {int /*<<< orphan*/  ctx; int /*<<< orphan*/  copy_tex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;
    for (int i = 0; i < 4; i++)
        FUNC1(mapper->ra, &mapper->tex[i]);
    FUNC0(p->copy_tex);
    FUNC0(p->ctx);
}