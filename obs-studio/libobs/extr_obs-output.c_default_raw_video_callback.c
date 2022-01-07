
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_data {int timestamp; } ;
struct TYPE_4__ {int data; } ;
struct TYPE_3__ {int (* raw_video ) (int ,struct video_data*) ;} ;
struct obs_output {int total_frames; TYPE_2__ context; TYPE_1__ info; int pause; } ;


 scalar_t__ data_active (struct obs_output*) ;
 int stub1 (int ,struct video_data*) ;
 scalar_t__ video_pause_check (int *,int ) ;

__attribute__((used)) static void default_raw_video_callback(void *param, struct video_data *frame)
{
 struct obs_output *output = param;

 if (video_pause_check(&output->pause, frame->timestamp))
  return;

 if (data_active(output))
  output->info.raw_video(output->context.data, frame);
 output->total_frames++;
}
