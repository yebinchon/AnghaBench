
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; } ;
struct TYPE_6__ {TYPE_1__ info; } ;
typedef TYPE_2__ obs_encoder_t ;
typedef enum obs_encoder_type { ____Placeholder_obs_encoder_type } obs_encoder_type ;


 int OBS_ENCODER_AUDIO ;
 scalar_t__ obs_encoder_valid (TYPE_2__ const*,char*) ;

enum obs_encoder_type obs_encoder_get_type(const obs_encoder_t *encoder)
{
 return obs_encoder_valid(encoder, "obs_encoder_get_type")
         ? encoder->info.type
         : OBS_ENCODER_AUDIO;
}
