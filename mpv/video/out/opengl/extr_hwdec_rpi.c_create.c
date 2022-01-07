
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_hwdec {int log; struct priv* priv; } ;
struct priv {int renderer; int log; } ;


 int MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER ;
 int MP_FATAL (struct ra_hwdec*,char*) ;
 int bcm_host_init () ;
 scalar_t__ mmal_component_create (int ,int *) ;
 int mmal_vc_deinit () ;
 scalar_t__ mmal_vc_init () ;

__attribute__((used)) static int create(struct ra_hwdec *hw)
{
    struct priv *p = hw->priv;
    p->log = hw->log;

    bcm_host_init();

    if (mmal_vc_init()) {
        MP_FATAL(hw, "Could not initialize MMAL.\n");
        return -1;
    }

    if (mmal_component_create(MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER, &p->renderer))
    {
        MP_FATAL(hw, "Could not create MMAL renderer.\n");
        mmal_vc_deinit();
        return -1;
    }

    return 0;
}
