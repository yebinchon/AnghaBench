
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_source_frame {int refs; } ;


 int obs_source_frame_destroy (struct obs_source_frame*) ;
 scalar_t__ os_atomic_dec_long (int *) ;

__attribute__((used)) static inline void obs_source_frame_decref(struct obs_source_frame *frame)
{
 if (os_atomic_dec_long(&frame->refs) == 0)
  obs_source_frame_destroy(frame);
}
