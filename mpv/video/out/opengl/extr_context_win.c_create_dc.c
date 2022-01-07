
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ra_ctx {int vo; struct priv* priv; } ;
struct priv {scalar_t__ hdc; } ;
struct TYPE_5__ {int nSize; int nVersion; int dwFlags; int cColorBits; int iLayerType; int iPixelType; } ;
typedef TYPE_1__ PIXELFORMATDESCRIPTOR ;
typedef int HWND ;
typedef scalar_t__ HDC ;


 int ChoosePixelFormat (scalar_t__,TYPE_1__*) ;
 scalar_t__ GetDC (int ) ;
 int MP_ERR (int ,char*) ;
 int PFD_DOUBLEBUFFER ;
 int PFD_DRAW_TO_WINDOW ;
 int PFD_MAIN_PLANE ;
 int PFD_SUPPORT_OPENGL ;
 int PFD_TYPE_RGBA ;
 int ReleaseDC (int ,scalar_t__) ;
 int SetPixelFormat (scalar_t__,int,TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int vo_w32_hwnd (int ) ;

__attribute__((used)) static bool create_dc(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    HWND win = vo_w32_hwnd(ctx->vo);

    if (p->hdc)
        return 1;

    HDC hdc = GetDC(win);
    if (!hdc)
        return 0;

    PIXELFORMATDESCRIPTOR pfd;
    memset(&pfd, 0, sizeof pfd);
    pfd.nSize = sizeof pfd;
    pfd.nVersion = 1;
    pfd.dwFlags = PFD_DRAW_TO_WINDOW | PFD_SUPPORT_OPENGL | PFD_DOUBLEBUFFER;

    pfd.iPixelType = PFD_TYPE_RGBA;
    pfd.cColorBits = 24;
    pfd.iLayerType = PFD_MAIN_PLANE;
    int pf = ChoosePixelFormat(hdc, &pfd);

    if (!pf) {
        MP_ERR(ctx->vo, "unable to select a valid pixel format!\n");
        ReleaseDC(win, hdc);
        return 0;
    }

    SetPixelFormat(hdc, pf, &pfd);

    p->hdc = hdc;
    return 1;
}
