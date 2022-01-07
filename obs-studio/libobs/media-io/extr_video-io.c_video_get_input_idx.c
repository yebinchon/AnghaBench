
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t num; struct video_input* array; } ;
struct TYPE_5__ {TYPE_1__ inputs; } ;
typedef TYPE_2__ video_t ;
struct video_input {void (* callback ) (void*,struct video_data*) ;void* param; } ;


 size_t DARRAY_INVALID ;

__attribute__((used)) static size_t video_get_input_idx(const video_t *video,
      void (*callback)(void *param,
         struct video_data *frame),
      void *param)
{
 for (size_t i = 0; i < video->inputs.num; i++) {
  struct video_input *input = video->inputs.array + i;
  if (input->callback == callback && input->param == param)
   return i;
 }

 return DARRAY_INVALID;
}
