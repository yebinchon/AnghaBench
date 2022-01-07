
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_AUDIO_MIXES ;

__attribute__((used)) static int get_audio_mix_count(int audio_mix_mask)
{
 int mix_count = 0;
 for (int i = 0; i < MAX_AUDIO_MIXES; i++) {
  if ((audio_mix_mask & (1 << i)) != 0) {
   mix_count++;
  }
 }

 return mix_count;
}
