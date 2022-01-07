
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct vo_x11_state {int window; int display; int screen; int rootwin; } ;
struct vo {struct vo_x11_state* x11; int global; int log; struct priv* priv; } ;
struct TYPE_8__ {scalar_t__ visualid; } ;
struct priv {int gc; TYPE_2__ vinfo; int depth; TYPE_3__* sws; struct vo* vo; } ;
struct TYPE_7__ {int depth; } ;
typedef TYPE_1__ XWindowAttributes ;
struct TYPE_9__ {int log; } ;


 int MP_VERBOSE (struct vo*,char*,int) ;
 int MP_WARN (struct vo*,char*) ;
 int TrueColor ;
 int XCreateGC (int ,int ,int ,int *) ;
 int XGetWindowAttributes (int ,int ,TYPE_1__*) ;
 int XMatchVisualInfo (int ,int ,int ,int ,TYPE_2__*) ;
 TYPE_3__* mp_sws_alloc (struct vo*) ;
 int mp_sws_enable_cmdline_opts (TYPE_3__*,int ) ;
 int uninit (struct vo*) ;
 int vo_x11_create_vo_window (struct vo*,TYPE_2__*,char*) ;
 int vo_x11_init (struct vo*) ;

__attribute__((used)) static int preinit(struct vo *vo)
{
    struct priv *p = vo->priv;
    p->vo = vo;
    p->sws = mp_sws_alloc(vo);
    p->sws->log = vo->log;
    mp_sws_enable_cmdline_opts(p->sws, vo->global);

    if (!vo_x11_init(vo))
        goto error;
    struct vo_x11_state *x11 = vo->x11;

    XWindowAttributes attribs;
    XGetWindowAttributes(x11->display, x11->rootwin, &attribs);
    p->depth = attribs.depth;

    if (!XMatchVisualInfo(x11->display, x11->screen, p->depth,
                          TrueColor, &p->vinfo))
        goto error;

    MP_VERBOSE(vo, "selected visual: %d\n", (int)p->vinfo.visualid);

    if (!vo_x11_create_vo_window(vo, &p->vinfo, "x11"))
        goto error;

    p->gc = XCreateGC(x11->display, x11->window, 0, ((void*)0));
    MP_WARN(vo, "Warning: this legacy VO has bad performance. Consider fixing "
                "your graphics drivers, or not forcing the x11 VO.\n");
    return 0;

error:
    uninit(vo);
    return -1;
}
