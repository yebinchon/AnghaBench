
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_filter {struct lavfi* priv; } ;
struct lavfi {int tmp_frame; } ;


 int av_frame_free (int *) ;
 int lavfi_reset (struct mp_filter*) ;

__attribute__((used)) static void lavfi_destroy(struct mp_filter *f)
{
    struct lavfi *c = f->priv;

    lavfi_reset(f);
    av_frame_free(&c->tmp_frame);
}
