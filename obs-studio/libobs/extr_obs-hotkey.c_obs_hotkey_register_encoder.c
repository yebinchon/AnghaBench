
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int obs_hotkey_id ;
typedef int obs_hotkey_func ;
struct TYPE_4__ {int context; } ;
typedef TYPE_1__ obs_encoder_t ;


 int OBS_HOTKEY_REGISTERER_ENCODER ;
 int OBS_INVALID_HOTKEY_ID ;
 int lock () ;
 int obs_encoder_get_weak_encoder (TYPE_1__*) ;
 int obs_hotkey_register_internal (int ,int ,int *,char const*,char const*,int ,void*) ;
 int unlock () ;

obs_hotkey_id obs_hotkey_register_encoder(obs_encoder_t *encoder,
       const char *name,
       const char *description,
       obs_hotkey_func func, void *data)
{
 if (!encoder || !lock())
  return OBS_INVALID_HOTKEY_ID;

 obs_hotkey_id id = obs_hotkey_register_internal(
  OBS_HOTKEY_REGISTERER_ENCODER,
  obs_encoder_get_weak_encoder(encoder), &encoder->context, name,
  description, func, data);

 unlock();
 return id;
}
