
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct xvctx {int xv_port; } ;
struct vo {TYPE_1__* x11; struct xvctx* priv; } ;
struct TYPE_6__ {int height; int width; int name; } ;
typedef TYPE_2__ XvEncodingInfo ;
struct TYPE_5__ {int display; } ;


 int MP_VERBOSE (struct vo*,char*,int ,int ) ;
 int XvFreeEncodingInfo (TYPE_2__*) ;
 int XvQueryEncodings (int ,int ,unsigned int*,TYPE_2__**) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void xv_get_max_img_dim(struct vo *vo, uint32_t *width, uint32_t *height)
{
    struct xvctx *ctx = vo->priv;
    XvEncodingInfo *encodings;
    unsigned int num_encodings, idx;

    XvQueryEncodings(vo->x11->display, ctx->xv_port, &num_encodings, &encodings);

    if (encodings) {
        for (idx = 0; idx < num_encodings; ++idx) {
            if (strcmp(encodings[idx].name, "XV_IMAGE") == 0) {
                *width = encodings[idx].width;
                *height = encodings[idx].height;
                break;
            }
        }
    }

    MP_VERBOSE(vo, "Maximum source image dimensions: %ux%u\n", *width, *height);

    XvFreeEncodingInfo(encodings);
}
