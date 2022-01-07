
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_frame {int current; int repeat; int redraw; } ;
struct vo {struct priv* priv; } ;
struct priv {int * next_image; } ;
typedef int mp_image_t ;


 int * mp_image_new_ref (int ) ;
 int talloc_free (int *) ;

__attribute__((used)) static void draw_frame(struct vo *vo, struct vo_frame *frame)
{
    struct priv *p = vo->priv;

    mp_image_t *mpi = ((void*)0);
    if (!frame->redraw && !frame->repeat)
        mpi = mp_image_new_ref(frame->current);

    talloc_free(p->next_image);
    p->next_image = mpi;
}
