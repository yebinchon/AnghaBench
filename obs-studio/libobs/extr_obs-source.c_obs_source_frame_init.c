
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct video_frame {int * linesize; int * data; } ;
struct obs_source_frame {int format; int * linesize; int * data; void* height; void* width; } ;
typedef enum video_format { ____Placeholder_video_format } video_format ;


 size_t MAX_AV_PLANES ;
 int obs_ptr_valid (struct obs_source_frame*,char*) ;
 int video_frame_init (struct video_frame*,int,void*,void*) ;

void obs_source_frame_init(struct obs_source_frame *frame,
      enum video_format format, uint32_t width,
      uint32_t height)
{
 struct video_frame vid_frame;

 if (!obs_ptr_valid(frame, "obs_source_frame_init"))
  return;

 video_frame_init(&vid_frame, format, width, height);
 frame->format = format;
 frame->width = width;
 frame->height = height;

 for (size_t i = 0; i < MAX_AV_PLANES; i++) {
  frame->data[i] = vid_frame.data[i];
  frame->linesize[i] = vid_frame.linesize[i];
 }
}
