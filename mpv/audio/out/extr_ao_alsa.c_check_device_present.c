
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int device_lost; } ;
struct ao {struct priv* priv; } ;


 int ENODEV ;
 int MP_WARN (struct ao*,char*) ;
 int ao_request_reload (struct ao*) ;

__attribute__((used)) static bool check_device_present(struct ao *ao, int alsa_err)
{
    struct priv *p = ao->priv;
    if (alsa_err != -ENODEV)
        return 1;
    if (!p->device_lost) {
        MP_WARN(ao, "Device lost, trying to recover...\n");
        ao_request_reload(ao);
        p->device_lost = 1;
    }
    return 0;
}
