
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_frame {int num_frames; int * frames; } ;


 int talloc_free (int ) ;

__attribute__((used)) static void destroy_frame(void *p)
{
    struct vo_frame *frame = p;
    for (int n = 0; n < frame->num_frames; n++)
        talloc_free(frame->frames[n]);
}
