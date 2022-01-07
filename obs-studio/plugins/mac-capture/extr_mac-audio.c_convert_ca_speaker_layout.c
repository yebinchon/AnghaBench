
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum speaker_layout { ____Placeholder_speaker_layout } speaker_layout ;
typedef int UInt32 ;


 int SPEAKERS_2POINT1 ;
 int SPEAKERS_4POINT0 ;
 int SPEAKERS_4POINT1 ;
 int SPEAKERS_5POINT1 ;
 int SPEAKERS_7POINT1 ;
 int SPEAKERS_MONO ;
 int SPEAKERS_STEREO ;
 int SPEAKERS_UNKNOWN ;

__attribute__((used)) static inline enum speaker_layout convert_ca_speaker_layout(UInt32 channels)
{
 switch (channels) {
 case 1:
  return SPEAKERS_MONO;
 case 2:
  return SPEAKERS_STEREO;
 case 3:
  return SPEAKERS_2POINT1;
 case 4:
  return SPEAKERS_4POINT0;
 case 5:
  return SPEAKERS_4POINT1;
 case 6:
  return SPEAKERS_5POINT1;
 case 8:
  return SPEAKERS_7POINT1;
 }

 return SPEAKERS_UNKNOWN;
}
