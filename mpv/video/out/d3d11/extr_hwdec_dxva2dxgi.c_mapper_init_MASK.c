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
struct TYPE_3__ {scalar_t__ hw_subfmt; int /*<<< orphan*/  imgfmt; } ;
struct ra_hwdec_mapper {TYPE_1__ dst_params; TYPE_1__ src_params; struct priv* priv; TYPE_2__* owner; } ;
struct priv_owner {int /*<<< orphan*/  dev11; int /*<<< orphan*/  dev9; } ;
struct priv {int /*<<< orphan*/  ctx11; int /*<<< orphan*/  dev9; int /*<<< orphan*/  dev11; } ;
struct TYPE_4__ {struct priv_owner* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IMGFMT_RGB0 ; 

__attribute__((used)) static int FUNC3(struct ra_hwdec_mapper *mapper)
{
    struct priv_owner *o = mapper->owner->priv;
    struct priv *p = mapper->priv;

    FUNC0(o->dev11);
    p->dev11 = o->dev11;
    FUNC2(o->dev9);
    p->dev9 = o->dev9;
    FUNC1(o->dev11, &p->ctx11);

    mapper->dst_params = mapper->src_params;
    mapper->dst_params.imgfmt = IMGFMT_RGB0;
    mapper->dst_params.hw_subfmt = 0;
    return 0;
}