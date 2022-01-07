
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_source_frame {int * data; } ;


 int bfree (int ) ;
 int memset (struct obs_source_frame*,int ,int) ;

__attribute__((used)) static inline void obs_source_frame_free(struct obs_source_frame *frame)
{
 if (frame) {
  bfree(frame->data[0]);
  memset(frame, 0, sizeof(*frame));
 }
}
