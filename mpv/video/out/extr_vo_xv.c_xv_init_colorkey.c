
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ method; scalar_t__ source; } ;
struct xvctx {int xv_colorkey; int colorkey; TYPE_2__ xv_ck_info; int xv_port; } ;
struct vo {TYPE_1__* x11; struct xvctx* priv; } ;
struct TYPE_3__ {int * display; } ;
typedef int Display ;
typedef scalar_t__ Atom ;


 scalar_t__ CK_METHOD_AUTOPAINT ;
 scalar_t__ CK_METHOD_MANUALFILL ;
 scalar_t__ CK_METHOD_NONE ;
 scalar_t__ CK_SRC_CUR ;
 scalar_t__ CK_SRC_SET ;
 int False ;
 int MP_FATAL (struct vo*,char*) ;
 scalar_t__ None ;
 int Success ;
 scalar_t__ XInternAtom (int *,char*,int ) ;
 int XvGetPortAttribute (int *,int ,scalar_t__,int*) ;
 int XvSetPortAttribute (int *,int ,scalar_t__,int) ;
 scalar_t__ xv_intern_atom_if_exists (struct vo*,char*) ;
 int xv_print_ck_info (struct vo*) ;

__attribute__((used)) static int xv_init_colorkey(struct vo *vo)
{
    struct xvctx *ctx = vo->priv;
    Display *display = vo->x11->display;
    Atom xv_atom;
    int rez;


    xv_atom = xv_intern_atom_if_exists(vo, "XV_COLORKEY");
    if (xv_atom != None && ctx->xv_ck_info.method != CK_METHOD_NONE) {
        if (ctx->xv_ck_info.source == CK_SRC_CUR) {
            int colorkey_ret;

            rez = XvGetPortAttribute(display, ctx->xv_port, xv_atom,
                                     &colorkey_ret);
            if (rez == Success)
                ctx->xv_colorkey = colorkey_ret;
            else {
                MP_FATAL(vo, "Couldn't get colorkey! "
                         "Maybe the selected Xv port has no overlay.\n");
                return 0;
            }
        } else {
            ctx->xv_colorkey = ctx->colorkey;


            if (ctx->xv_ck_info.source == CK_SRC_SET) {
                xv_atom = XInternAtom(display, "XV_COLORKEY", False);

                rez = XvSetPortAttribute(display, ctx->xv_port, xv_atom,
                                         ctx->colorkey);
                if (rez != Success) {
                    MP_FATAL(vo, "Couldn't set colorkey!\n");
                    return 0;
                }
            }
        }

        xv_atom = xv_intern_atom_if_exists(vo, "XV_AUTOPAINT_COLORKEY");


        if (ctx->xv_ck_info.method == CK_METHOD_AUTOPAINT) {
            rez = !Success;

            if (xv_atom != None)
                rez = XvSetPortAttribute(display, ctx->xv_port, xv_atom, 1);

            if (rez != Success)
                ctx->xv_ck_info.method = CK_METHOD_MANUALFILL;
        } else {

            if (xv_atom != None)
                XvSetPortAttribute(display, ctx->xv_port, xv_atom, 0);
        }
    } else {
        ctx->xv_ck_info.method = CK_METHOD_NONE;
        ctx->colorkey = 0xFF000000;
    }

    xv_print_ck_info(vo);

    return 1;
}
