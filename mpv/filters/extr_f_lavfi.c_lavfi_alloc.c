
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_filter {int log; struct lavfi* priv; } ;
struct TYPE_2__ {struct mp_filter* f; } ;
struct lavfi {int tmp_frame; TYPE_1__ public; int log; struct mp_filter* f; } ;


 int abort () ;
 int av_frame_alloc () ;
 int lavfi_filter ;
 struct mp_filter* mp_filter_create (struct mp_filter*,int *) ;

__attribute__((used)) static struct lavfi *lavfi_alloc(struct mp_filter *parent)
{
    struct mp_filter *f = mp_filter_create(parent, &lavfi_filter);
    if (!f)
        return ((void*)0);

    struct lavfi *c = f->priv;

    c->f = f;
    c->log = f->log;
    c->public.f = f;
    c->tmp_frame = av_frame_alloc();
    if (!c->tmp_frame)
        abort();

    return c;
}
