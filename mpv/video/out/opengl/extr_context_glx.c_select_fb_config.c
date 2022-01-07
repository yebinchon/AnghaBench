
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo {TYPE_1__* x11; } ;
typedef int * XVisualInfo ;
struct TYPE_2__ {int display; int screen; } ;
typedef int * GLXFBConfig ;


 int XFree (int **) ;
 int ** glXChooseFBConfig (int ,int ,int const*,int*) ;
 int ** glXGetVisualFromFBConfig (int ,int *) ;
 int vo_x11_is_rgba_visual (int **) ;

__attribute__((used)) static GLXFBConfig select_fb_config(struct vo *vo, const int *attribs, bool alpha)
{
    int fbcount;
    GLXFBConfig *fbc = glXChooseFBConfig(vo->x11->display, vo->x11->screen,
                                         attribs, &fbcount);
    if (!fbc)
        return ((void*)0);


    GLXFBConfig fbconfig = fbcount > 0 ? fbc[0] : ((void*)0);

    if (alpha) {
        for (int n = 0; n < fbcount; n++) {
            XVisualInfo *v = glXGetVisualFromFBConfig(vo->x11->display, fbc[n]);
            if (v) {
                bool is_rgba = vo_x11_is_rgba_visual(v);
                XFree(v);
                if (is_rgba) {
                    fbconfig = fbc[n];
                    break;
                }
            }
        }
    }

    XFree(fbc);

    return fbconfig;
}
