
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_filter {struct chain* priv; } ;
struct TYPE_2__ {int ao_needs_update; int got_output_eof; } ;
struct chain {TYPE_1__ public; } ;



__attribute__((used)) static void reset(struct mp_filter *f)
{
    struct chain *p = f->priv;

    p->public.ao_needs_update = 0;

    p->public.got_output_eof = 0;
}
