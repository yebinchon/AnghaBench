
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int obs_hotkey_pair_id ;
typedef int obs_hotkey_active_func ;
struct TYPE_4__ {int context; } ;
typedef TYPE_1__ obs_encoder_t ;


 int OBS_HOTKEY_REGISTERER_ENCODER ;
 int OBS_INVALID_HOTKEY_PAIR_ID ;
 int register_hotkey_pair_internal (int ,TYPE_1__*,int ,int *,char const*,char const*,char const*,char const*,int ,int ,void*,void*) ;
 int weak_encoder_ref ;

obs_hotkey_pair_id obs_hotkey_pair_register_encoder(
 obs_encoder_t *encoder, const char *name0, const char *description0,
 const char *name1, const char *description1,
 obs_hotkey_active_func func0, obs_hotkey_active_func func1, void *data0,
 void *data1)
{
 if (!encoder)
  return OBS_INVALID_HOTKEY_PAIR_ID;
 return register_hotkey_pair_internal(OBS_HOTKEY_REGISTERER_ENCODER,
          encoder, weak_encoder_ref,
          &encoder->context, name0,
          description0, name1, description1,
          func0, func1, data0, data1);
}
