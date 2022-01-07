
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_input {int scaler; int * frame; } ;


 size_t MAX_CONVERT_BUFFERS ;
 int video_frame_free (int *) ;
 int video_scaler_destroy (int ) ;

__attribute__((used)) static inline void video_input_free(struct video_input *input)
{
 for (size_t i = 0; i < MAX_CONVERT_BUFFERS; i++)
  video_frame_free(&input->frame[i]);
 video_scaler_destroy(input->scaler);
}
