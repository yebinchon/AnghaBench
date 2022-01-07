
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_5__ {int preferred_format; TYPE_1__ info; } ;
typedef TYPE_2__ obs_encoder_t ;
typedef enum video_format { ____Placeholder_video_format } video_format ;


 scalar_t__ OBS_ENCODER_VIDEO ;
 int VIDEO_FORMAT_NONE ;

enum video_format
obs_encoder_get_preferred_video_format(const obs_encoder_t *encoder)
{
 if (!encoder || encoder->info.type != OBS_ENCODER_VIDEO)
  return VIDEO_FORMAT_NONE;

 return encoder->preferred_format;
}
