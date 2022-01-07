
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct obs_source_frame {int dummy; } ;
typedef enum video_format { ____Placeholder_video_format } video_format ;


 scalar_t__ bzalloc (int) ;
 int obs_source_frame_init (struct obs_source_frame*,int,int ,int ) ;

__attribute__((used)) static inline struct obs_source_frame *
obs_source_frame_create(enum video_format format, uint32_t width,
   uint32_t height)
{
 struct obs_source_frame *frame;

 frame = (struct obs_source_frame *)bzalloc(sizeof(*frame));
 obs_source_frame_init(frame, format, width, height);
 return frame;
}
