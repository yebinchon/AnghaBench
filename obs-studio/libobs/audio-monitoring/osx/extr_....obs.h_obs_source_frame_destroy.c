
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_source_frame {struct obs_source_frame** data; } ;


 int bfree (struct obs_source_frame*) ;

__attribute__((used)) static inline void obs_source_frame_destroy(struct obs_source_frame *frame)
{
 if (frame) {
  bfree(frame->data[0]);
  bfree(frame);
 }
}
