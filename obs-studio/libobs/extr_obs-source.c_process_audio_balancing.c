
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_2__ {scalar_t__ data; } ;
struct obs_source {TYPE_1__ audio_data; } ;
typedef enum obs_balance_type { ____Placeholder_obs_balance_type } obs_balance_type ;


 float M_PI ;



 float sinf (float) ;
 float sqrtf (float) ;

__attribute__((used)) static void process_audio_balancing(struct obs_source *source, uint32_t frames,
        float balance, enum obs_balance_type type)
{
 float **data = (float **)source->audio_data.data;

 switch (type) {
 case 129:
  for (uint32_t frame = 0; frame < frames; frame++) {
   data[0][frame] = data[0][frame] *
      sinf((1.0f - balance) * (M_PI / 2.0f));
   data[1][frame] =
    data[1][frame] * sinf(balance * (M_PI / 2.0f));
  }
  break;
 case 128:
  for (uint32_t frame = 0; frame < frames; frame++) {
   data[0][frame] = data[0][frame] * sqrtf(1.0f - balance);
   data[1][frame] = data[1][frame] * sqrtf(balance);
  }
  break;
 case 130:
  for (uint32_t frame = 0; frame < frames; frame++) {
   data[0][frame] = data[0][frame] * (1.0f - balance);
   data[1][frame] = data[1][frame] * balance;
  }
  break;
 default:
  break;
 }
}
