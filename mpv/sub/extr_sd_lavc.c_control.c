
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_image_params {int dummy; } ;
struct sd_lavc_priv {struct mp_image_params video_params; } ;
struct sd {struct sd_lavc_priv* priv; } ;
typedef enum sd_ctrl { ____Placeholder_sd_ctrl } sd_ctrl ;


 int CONTROL_OK ;
 int CONTROL_UNKNOWN ;
 double MP_NOPTS_VALUE ;


 double step_sub (struct sd*,double,double) ;

__attribute__((used)) static int control(struct sd *sd, enum sd_ctrl cmd, void *arg)
{
    struct sd_lavc_priv *priv = sd->priv;
    switch (cmd) {
    case 128: {
        double *a = arg;
        double res = step_sub(sd, a[0], a[1]);
        if (res == MP_NOPTS_VALUE)
            return 0;
        a[0] = res;
        return 1;
    }
    case 129:
        priv->video_params = *(struct mp_image_params *)arg;
        return CONTROL_OK;
    default:
        return CONTROL_UNKNOWN;
    }
}
