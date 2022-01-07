
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct priv {int vol; int hdl; int havevol; } ;
struct ao {struct priv* priv; } ;
typedef enum aocontrol { ____Placeholder_aocontrol } aocontrol ;
struct TYPE_2__ {int left; int right; } ;
typedef TYPE_1__ ao_control_vol_t ;




 int CONTROL_FALSE ;
 int CONTROL_OK ;
 int CONTROL_UNKNOWN ;
 int SIO_MAXVOL ;
 int sio_setvol (int ,int) ;

__attribute__((used)) static int control(struct ao *ao, enum aocontrol cmd, void *arg)
{
    struct priv *p = ao->priv;
    ao_control_vol_t *vol = arg;

    switch (cmd) {
    case 129:
        if (!p->havevol)
            return CONTROL_FALSE;
        vol->left = vol->right = p->vol * 100 / SIO_MAXVOL;
        break;
    case 128:
        if (!p->havevol)
            return CONTROL_FALSE;
        sio_setvol(p->hdl, vol->left * SIO_MAXVOL / 100);
        break;
    default:
        return CONTROL_UNKNOWN;
    }
    return CONTROL_OK;
}
