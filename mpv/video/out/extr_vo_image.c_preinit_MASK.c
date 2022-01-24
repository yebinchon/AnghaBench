#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vo {int /*<<< orphan*/  global; struct priv* priv; } ;
struct priv {TYPE_1__* opts; } ;
struct TYPE_2__ {scalar_t__ outdir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,scalar_t__) ; 
 TYPE_1__* FUNC1 (struct vo*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vo_image_conf ; 

__attribute__((used)) static int FUNC2(struct vo *vo)
{
    struct priv *p = vo->priv;
    p->opts = FUNC1(vo, vo->global, &vo_image_conf);
    if (p->opts->outdir && !FUNC0(vo, p->opts->outdir))
        return -1;
    return 0;
}