
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_hwdec {struct priv* priv; } ;
struct priv {scalar_t__ renderer; } ;


 int disable_renderer (struct ra_hwdec*) ;
 int mmal_component_release (scalar_t__) ;
 int mmal_vc_deinit () ;

__attribute__((used)) static void destroy(struct ra_hwdec *hw)
{
    struct priv *p = hw->priv;

    disable_renderer(hw);

    if (p->renderer)
        mmal_component_release(p->renderer);

    mmal_vc_deinit();
}
