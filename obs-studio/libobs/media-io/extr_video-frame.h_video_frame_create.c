
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct video_frame {int dummy; } ;
typedef enum video_format { ____Placeholder_video_format } video_format ;


 scalar_t__ bzalloc (int) ;
 int video_frame_init (struct video_frame*,int,int ,int ) ;

__attribute__((used)) static inline struct video_frame *
video_frame_create(enum video_format format, uint32_t width, uint32_t height)
{
 struct video_frame *frame;

 frame = (struct video_frame *)bzalloc(sizeof(struct video_frame));
 video_frame_init(frame, format, width, height);
 return frame;
}
