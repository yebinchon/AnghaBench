
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_filter {struct lavfi* priv; } ;
struct lavfi {int num_in_pads; TYPE_1__** in_pads; } ;
struct TYPE_2__ {int pending; } ;


 int free_graph (struct lavfi*) ;
 int mp_frame_unref (int *) ;

__attribute__((used)) static void lavfi_reset(struct mp_filter *f)
{
    struct lavfi *c = f->priv;

    free_graph(c);

    for (int n = 0; n < c->num_in_pads; n++)
        mp_frame_unref(&c->in_pads[n]->pending);
}
