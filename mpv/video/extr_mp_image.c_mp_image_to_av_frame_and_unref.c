
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_image {int dummy; } ;
struct AVFrame {int dummy; } ;
typedef struct AVFrame AVFrame ;


 struct AVFrame* mp_image_to_av_frame (struct mp_image*) ;
 int talloc_free (struct mp_image*) ;

struct AVFrame *mp_image_to_av_frame_and_unref(struct mp_image *img)
{
    AVFrame *frame = mp_image_to_av_frame(img);
    talloc_free(img);
    return frame;
}
