
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_frame {int num_frames; int ** frames; int * current; } ;


 int abort () ;
 int destroy_frame ;
 int * mp_image_new_ref (int *) ;
 struct vo_frame* new ;
 struct vo_frame* talloc_ptrtype (int *,int ) ;
 int talloc_set_destructor (struct vo_frame*,int ) ;

struct vo_frame *vo_frame_ref(struct vo_frame *frame)
{
    if (!frame)
        return ((void*)0);

    struct vo_frame *new = talloc_ptrtype(((void*)0), new);
    talloc_set_destructor(new, destroy_frame);
    *new = *frame;
    for (int n = 0; n < frame->num_frames; n++) {
        new->frames[n] = mp_image_new_ref(frame->frames[n]);
        if (!new->frames[n])
            abort();
    }
    new->current = new->num_frames ? new->frames[0] : ((void*)0);
    return new;
}
