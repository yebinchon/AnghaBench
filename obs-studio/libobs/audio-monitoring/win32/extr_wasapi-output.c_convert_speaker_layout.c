
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum speaker_layout { ____Placeholder_speaker_layout } speaker_layout ;
typedef int WORD ;
typedef int DWORD ;







 int SPEAKERS_2POINT1 ;
 int SPEAKERS_4POINT0 ;
 int SPEAKERS_4POINT1 ;
 int SPEAKERS_5POINT1 ;
 int SPEAKERS_7POINT1 ;

__attribute__((used)) static enum speaker_layout convert_speaker_layout(DWORD layout, WORD channels)
{
 switch (layout) {
 case 132:
  return SPEAKERS_2POINT1;
 case 128:
  return SPEAKERS_4POINT0;
 case 131:
  return SPEAKERS_4POINT1;
 case 130:
  return SPEAKERS_5POINT1;
 case 129:
  return SPEAKERS_7POINT1;
 }

 return (enum speaker_layout)channels;
}
