
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int channels; void** map; } ;
typedef TYPE_1__ pa_channel_map ;
typedef enum speaker_layout { ____Placeholder_speaker_layout } speaker_layout ;


 void* PA_CHANNEL_POSITION_FRONT_CENTER ;
 void* PA_CHANNEL_POSITION_FRONT_LEFT ;
 void* PA_CHANNEL_POSITION_FRONT_RIGHT ;
 void* PA_CHANNEL_POSITION_LFE ;
 void* PA_CHANNEL_POSITION_MONO ;
 void* PA_CHANNEL_POSITION_REAR_CENTER ;
 void* PA_CHANNEL_POSITION_REAR_LEFT ;
 void* PA_CHANNEL_POSITION_REAR_RIGHT ;
 void* PA_CHANNEL_POSITION_SIDE_LEFT ;
 void* PA_CHANNEL_POSITION_SIDE_RIGHT ;
__attribute__((used)) static pa_channel_map pulseaudio_channel_map(enum speaker_layout layout)
{
 pa_channel_map ret;

 ret.map[0] = PA_CHANNEL_POSITION_FRONT_LEFT;
 ret.map[1] = PA_CHANNEL_POSITION_FRONT_RIGHT;
 ret.map[2] = PA_CHANNEL_POSITION_FRONT_CENTER;
 ret.map[3] = PA_CHANNEL_POSITION_LFE;
 ret.map[4] = PA_CHANNEL_POSITION_REAR_LEFT;
 ret.map[5] = PA_CHANNEL_POSITION_REAR_RIGHT;
 ret.map[6] = PA_CHANNEL_POSITION_SIDE_LEFT;
 ret.map[7] = PA_CHANNEL_POSITION_SIDE_RIGHT;

 switch (layout) {
 case 130:
  ret.channels = 1;
  ret.map[0] = PA_CHANNEL_POSITION_MONO;
  break;

 case 129:
  ret.channels = 2;
  break;

 case 135:
  ret.channels = 3;
  ret.map[2] = PA_CHANNEL_POSITION_LFE;
  break;

 case 134:
  ret.channels = 4;
  ret.map[3] = PA_CHANNEL_POSITION_REAR_CENTER;
  break;

 case 133:
  ret.channels = 5;
  ret.map[4] = PA_CHANNEL_POSITION_REAR_CENTER;
  break;

 case 132:
  ret.channels = 6;
  break;

 case 131:
  ret.channels = 8;
  break;

 case 128:
 default:
  ret.channels = 0;
  break;
 }

 return ret;
}
