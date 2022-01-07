
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int device; scalar_t__ change_physical_format; } ;
struct ao {int init_flags; char* redirect; int format; struct priv* priv; } ;
typedef int AudioStreamBasicDescription ;


 int AO_INIT_EXCLUSIVE ;
 int CONTROL_ERROR ;
 int CONTROL_OK ;
 int MP_VERBOSE (struct ao*,char*) ;
 int af_fmt_is_pcm (int ) ;
 int ca_fill_asbd (struct ao*,int *) ;
 int ca_init_chmap (struct ao*,int ) ;
 int init_audiounit (struct ao*,int ) ;
 int init_physical_format (struct ao*) ;
 int reinit_device (struct ao*) ;

__attribute__((used)) static int init(struct ao *ao)
{
    struct priv *p = ao->priv;

    if (!af_fmt_is_pcm(ao->format) || (ao->init_flags & AO_INIT_EXCLUSIVE)) {
        MP_VERBOSE(ao, "redirecting to coreaudio_exclusive\n");
        ao->redirect = "coreaudio_exclusive";
        return CONTROL_ERROR;
    }

    if (!reinit_device(ao))
        goto coreaudio_error;

    if (p->change_physical_format)
        init_physical_format(ao);

    if (!ca_init_chmap(ao, p->device))
        goto coreaudio_error;

    AudioStreamBasicDescription asbd;
    ca_fill_asbd(ao, &asbd);

    if (!init_audiounit(ao, asbd))
        goto coreaudio_error;

    return CONTROL_OK;

coreaudio_error:
    return CONTROL_ERROR;
}
