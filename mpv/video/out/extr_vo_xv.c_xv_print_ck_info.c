
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int method; int source; } ;
struct xvctx {int xv_colorkey; TYPE_1__ xv_ck_info; } ;
struct vo {struct xvctx* priv; } ;
 int MP_VERBOSE (struct vo*,char*,...) ;

__attribute__((used)) static void xv_print_ck_info(struct vo *vo)
{
    struct xvctx *xv = vo->priv;

    switch (xv->xv_ck_info.method) {
    case 131:
        MP_VERBOSE(vo, "Drawing no colorkey.\n");
        return;
    case 134:
        MP_VERBOSE(vo, "Colorkey is drawn by Xv.\n");
        break;
    case 132:
        MP_VERBOSE(vo, "Drawing colorkey manually.\n");
        break;
    case 133:
        MP_VERBOSE(vo, "Colorkey is drawn as window background.\n");
        break;
    }

    switch (xv->xv_ck_info.source) {
    case 130:
        MP_VERBOSE(vo, "Using colorkey from Xv (0x%06lx).\n", xv->xv_colorkey);
        break;
    case 128:
        if (xv->xv_ck_info.method == 134) {
            MP_VERBOSE(vo, "Ignoring colorkey from mpv (0x%06lx).\n",
                       xv->xv_colorkey);
        } else {
            MP_VERBOSE(vo, "Using colorkey from mpv (0x%06lx). Use -colorkey to change.\n",
                       xv->xv_colorkey);
        }
        break;
    case 129:
        MP_VERBOSE(vo, "Setting and using colorkey from mpv (0x%06lx)."
                   " Use -colorkey to change.\n", xv->xv_colorkey);
        break;
    }
}
