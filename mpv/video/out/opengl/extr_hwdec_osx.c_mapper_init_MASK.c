#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ imgfmt; scalar_t__ hw_subfmt; } ;
struct ra_hwdec_mapper {TYPE_1__ dst_params; int /*<<< orphan*/  ra; TYPE_1__ src_params; struct priv* priv; } ;
struct TYPE_9__ {int num_planes; TYPE_2__** planes; } ;
struct priv {TYPE_5__ desc; int /*<<< orphan*/  gl_planes; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* GenTextures ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {scalar_t__ ctype; } ;
typedef  TYPE_3__ GL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ra_hwdec_mapper*,char*) ; 
 int /*<<< orphan*/  MP_MAX_PLANES ; 
 scalar_t__ RA_CTYPE_UNORM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,TYPE_5__*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;
    GL *gl = FUNC2(mapper->ra);

    gl->GenTextures(MP_MAX_PLANES, p->gl_planes);

    mapper->dst_params = mapper->src_params;
    mapper->dst_params.imgfmt = mapper->src_params.hw_subfmt;
    mapper->dst_params.hw_subfmt = 0;

    if (!mapper->dst_params.imgfmt) {
        FUNC0(mapper, "Unsupported CVPixelBuffer format.\n");
        return -1;
    }

    if (!FUNC1(mapper->ra, mapper->dst_params.imgfmt, &p->desc)) {
        FUNC0(mapper, "Unsupported texture format.\n");
        return -1;
    }

    for (int n = 0; n < p->desc.num_planes; n++) {
        if (p->desc.planes[n]->ctype != RA_CTYPE_UNORM) {
            FUNC0(mapper, "Format unsupported.\n");
            return -1;
        }
    }
    return 0;
}