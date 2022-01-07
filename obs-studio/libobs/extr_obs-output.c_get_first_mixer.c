
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t mixer_mask; } ;
typedef TYPE_1__ obs_output_t ;


 size_t MAX_AUDIO_MIXES ;

__attribute__((used)) static inline size_t get_first_mixer(const obs_output_t *output)
{
 for (size_t i = 0; i < MAX_AUDIO_MIXES; i++) {
  if ((((size_t)1 << i) & output->mixer_mask) != 0) {
   return i;
  }
 }

 return 0;
}
