
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ imgfmt; scalar_t__ hw_subfmt; } ;
struct ra_hwdec_mapper {TYPE_1__ dst_params; int ra; TYPE_1__ src_params; struct priv* priv; } ;
struct TYPE_9__ {int num_planes; TYPE_2__** planes; } ;
struct priv {TYPE_5__ desc; int gl_planes; } ;
struct TYPE_8__ {int (* GenTextures ) (int ,int ) ;} ;
struct TYPE_7__ {scalar_t__ ctype; } ;
typedef TYPE_3__ GL ;


 int MP_ERR (struct ra_hwdec_mapper*,char*) ;
 int MP_MAX_PLANES ;
 scalar_t__ RA_CTYPE_UNORM ;
 int ra_get_imgfmt_desc (int ,scalar_t__,TYPE_5__*) ;
 TYPE_3__* ra_gl_get (int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static int mapper_init(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;
    GL *gl = ra_gl_get(mapper->ra);

    gl->GenTextures(MP_MAX_PLANES, p->gl_planes);

    mapper->dst_params = mapper->src_params;
    mapper->dst_params.imgfmt = mapper->src_params.hw_subfmt;
    mapper->dst_params.hw_subfmt = 0;

    if (!mapper->dst_params.imgfmt) {
        MP_ERR(mapper, "Unsupported CVPixelBuffer format.\n");
        return -1;
    }

    if (!ra_get_imgfmt_desc(mapper->ra, mapper->dst_params.imgfmt, &p->desc)) {
        MP_ERR(mapper, "Unsupported texture format.\n");
        return -1;
    }

    for (int n = 0; n < p->desc.num_planes; n++) {
        if (p->desc.planes[n]->ctype != RA_CTYPE_UNORM) {
            MP_ERR(mapper, "Format unsupported.\n");
            return -1;
        }
    }
    return 0;
}
