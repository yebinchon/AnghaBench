
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum speaker_layout { ____Placeholder_speaker_layout } speaker_layout ;
__attribute__((used)) static inline uint32_t get_audio_channels(enum speaker_layout speakers)
{
 switch (speakers) {
 case 130:
  return 1;
 case 129:
  return 2;
 case 135:
  return 3;
 case 134:
  return 4;
 case 133:
  return 5;
 case 132:
  return 6;
 case 131:
  return 8;
 case 128:
  return 0;
 }

 return 0;
}
