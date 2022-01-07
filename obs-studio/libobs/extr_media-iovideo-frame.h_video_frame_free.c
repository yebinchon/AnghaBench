
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_frame {int * data; } ;


 int bfree (int ) ;
 int memset (struct video_frame*,int ,int) ;

__attribute__((used)) static inline void video_frame_free(struct video_frame *frame)
{
 if (frame) {
  bfree(frame->data[0]);
  memset(frame, 0, sizeof(struct video_frame));
 }
}
