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
struct vo {scalar_t__ hwdec_devs; struct priv* priv; } ;
struct vaapi_osd_part {int /*<<< orphan*/  image; } ;
struct priv {TYPE_1__* mpvaapi; struct vaapi_osd_part* osd_parts; int /*<<< orphan*/  pool; } ;
struct TYPE_2__ {int /*<<< orphan*/  hwctx; } ;

/* Variables and functions */
 int MAX_OSD_PARTS ; 
 int /*<<< orphan*/  FUNC0 (struct priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct priv*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct vo*) ; 

__attribute__((used)) static void FUNC7(struct vo *vo)
{
    struct priv *p = vo->priv;

    FUNC1(p);
    FUNC4(p->pool);

    for (int n = 0; n < MAX_OSD_PARTS; n++) {
        struct vaapi_osd_part *part = &p->osd_parts[n];
        FUNC0(p, &part->image);
    }

    if (vo->hwdec_devs) {
        FUNC3(vo->hwdec_devs, &p->mpvaapi->hwctx);
        FUNC2(vo->hwdec_devs);
    }

    FUNC5(p->mpvaapi);

    FUNC6(vo);
}