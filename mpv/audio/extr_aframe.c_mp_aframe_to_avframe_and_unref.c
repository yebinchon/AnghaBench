
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_aframe {int dummy; } ;
struct AVFrame {int dummy; } ;
typedef struct AVFrame AVFrame ;


 struct AVFrame* mp_aframe_to_avframe (struct mp_aframe*) ;
 int talloc_free (struct mp_aframe*) ;

struct AVFrame *mp_aframe_to_avframe_and_unref(struct mp_aframe *frame)
{
    AVFrame *av = mp_aframe_to_avframe(frame);
    talloc_free(frame);
    return av;
}
