
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef enum speaker_layout { ____Placeholder_speaker_layout } speaker_layout ;
 int SPEAKERS_2POINT1 ;
 int SPEAKERS_4POINT0 ;
 int SPEAKERS_4POINT1 ;
 int SPEAKERS_5POINT1 ;
 int SPEAKERS_7POINT1 ;
 int SPEAKERS_MONO ;
 int SPEAKERS_STEREO ;
 int SPEAKERS_UNKNOWN ;

__attribute__((used)) static inline enum speaker_layout
convert_ff_channel_layout(uint64_t channel_layout)
{
 switch (channel_layout) {
 case 130:
  return SPEAKERS_MONO;
 case 129:
  return SPEAKERS_STEREO;
 case 128:
  return SPEAKERS_2POINT1;
 case 134:
  return SPEAKERS_4POINT0;
 case 133:
  return SPEAKERS_4POINT1;
 case 132:
  return SPEAKERS_5POINT1;
 case 131:
  return SPEAKERS_7POINT1;
 }


 return SPEAKERS_UNKNOWN;
}
