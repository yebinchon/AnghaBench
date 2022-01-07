
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef enum speaker_layout { ____Placeholder_speaker_layout } speaker_layout ;


 int AV_CH_LAYOUT_4POINT0 ;
 int AV_CH_LAYOUT_4POINT1 ;
 int AV_CH_LAYOUT_5POINT1_BACK ;
 int AV_CH_LAYOUT_7POINT1 ;
 int AV_CH_LAYOUT_MONO ;
 int AV_CH_LAYOUT_STEREO ;
 int AV_CH_LAYOUT_SURROUND ;
__attribute__((used)) static inline uint64_t convert_speaker_layout(enum speaker_layout layout)
{
 switch (layout) {
 case 128:
  return 0;
 case 130:
  return AV_CH_LAYOUT_MONO;
 case 129:
  return AV_CH_LAYOUT_STEREO;
 case 135:
  return AV_CH_LAYOUT_SURROUND;
 case 134:
  return AV_CH_LAYOUT_4POINT0;
 case 133:
  return AV_CH_LAYOUT_4POINT1;
 case 132:
  return AV_CH_LAYOUT_5POINT1_BACK;
 case 131:
  return AV_CH_LAYOUT_7POINT1;
 }


 return 0;
}
