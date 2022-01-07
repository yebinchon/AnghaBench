
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vo {int want_redraw; struct priv* priv; } ;
struct priv {int reload_display; double display_fps; int display_mutex; int renderer_enabled; } ;
struct mp_image {int dummy; } ;
 int VO_NOTIMPL ;
 int VO_TRUE ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int recreate_renderer (struct vo*) ;
 int resize (struct vo*) ;
 int set_geometry (struct vo*) ;
 struct mp_image* take_screenshot (struct vo*) ;
 int update_osd (struct vo*) ;

__attribute__((used)) static int control(struct vo *vo, uint32_t request, void *data)
{
    struct priv *p = vo->priv;

    switch (request) {
    case 132:
        if (p->renderer_enabled)
            set_geometry(vo);
        vo->want_redraw = 1;
        return VO_TRUE;
    case 128:
        if (p->renderer_enabled)
            resize(vo);
        vo->want_redraw = 1;
        return VO_TRUE;
    case 130:
        update_osd(vo);
        return VO_TRUE;
    case 129:
        *(struct mp_image **)data = take_screenshot(vo);
        return VO_TRUE;
    case 133: {
        pthread_mutex_lock(&p->display_mutex);
        bool reload_required = p->reload_display;
        p->reload_display = 0;
        pthread_mutex_unlock(&p->display_mutex);
        if (reload_required)
            recreate_renderer(vo);
        return VO_TRUE;
    }
    case 131:
        *(double *)data = p->display_fps;
        return VO_TRUE;
    }

    return VO_NOTIMPL;
}
