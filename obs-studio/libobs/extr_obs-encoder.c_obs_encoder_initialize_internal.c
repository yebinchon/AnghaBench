
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ type; int (* create ) (int ,TYPE_3__*) ;} ;
struct TYPE_9__ {int data; int settings; } ;
struct TYPE_11__ {int initialized; TYPE_2__ orig_info; TYPE_1__ context; TYPE_2__ info; } ;
typedef TYPE_3__ obs_encoder_t ;


 scalar_t__ OBS_ENCODER_AUDIO ;
 int can_reroute ;
 scalar_t__ encoder_active (TYPE_3__*) ;
 int intitialize_audio_encoder (TYPE_3__*) ;
 int obs_encoder_shutdown (TYPE_3__*) ;
 int stub1 (int ,TYPE_3__*) ;

__attribute__((used)) static inline bool obs_encoder_initialize_internal(obs_encoder_t *encoder)
{
 if (encoder_active(encoder))
  return 1;
 if (encoder->initialized)
  return 1;

 obs_encoder_shutdown(encoder);

 if (encoder->orig_info.create) {
  can_reroute = 1;
  encoder->info = encoder->orig_info;
  encoder->context.data = encoder->orig_info.create(
   encoder->context.settings, encoder);
  can_reroute = 0;
 }
 if (!encoder->context.data)
  return 0;

 if (encoder->orig_info.type == OBS_ENCODER_AUDIO)
  intitialize_audio_encoder(encoder);

 encoder->initialized = 1;
 return 1;
}
