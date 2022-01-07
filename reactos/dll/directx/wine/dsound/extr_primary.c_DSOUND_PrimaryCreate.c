
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int state; int buflen; } ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ DirectSoundDevice ;


 scalar_t__ DSOUND_PrimaryOpen (TYPE_1__*) ;
 scalar_t__ DS_OK ;
 int STATE_STOPPED ;
 int TRACE (char*,TYPE_1__*) ;
 int WARN (char*) ;
 int ds_hel_buflen ;

HRESULT DSOUND_PrimaryCreate(DirectSoundDevice *device)
{
 HRESULT err = DS_OK;
 TRACE("(%p)\n", device);

 device->buflen = ds_hel_buflen;
 err = DSOUND_PrimaryOpen(device);

 if (err != DS_OK) {
  WARN("DSOUND_PrimaryOpen failed\n");
  return err;
 }

 device->state = STATE_STOPPED;
 return DS_OK;
}
