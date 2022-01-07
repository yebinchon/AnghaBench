
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_frame {struct video_frame** data; } ;


 int bfree (struct video_frame*) ;

__attribute__((used)) static inline void video_frame_destroy(struct video_frame *frame)
{
 if (frame) {
  bfree(frame->data[0]);
  bfree(frame);
 }
}
