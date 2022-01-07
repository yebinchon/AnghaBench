
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mp_output_chain {TYPE_1__* f; } ;
struct mp_chmap {int member_0; } ;
struct TYPE_4__ {int ao_needs_update; int output_aformat; } ;
struct chain {TYPE_2__ public; int convert; struct ao* ao; } ;
struct ao {int dummy; } ;
struct TYPE_3__ {struct chain* priv; } ;


 int ao_get_format (struct ao*,int*,int*,struct mp_chmap*) ;
 int assert (int) ;
 int mp_aframe_reset (int ) ;
 int mp_autoconvert_add_afmt (int ,int) ;
 int mp_autoconvert_add_chmap (int ,struct mp_chmap*) ;
 int mp_autoconvert_add_srate (int ,int) ;
 int mp_autoconvert_clear (int ) ;
 int mp_autoconvert_format_change_continue (int ) ;

void mp_output_chain_set_ao(struct mp_output_chain *c, struct ao *ao)
{
    struct chain *p = c->f->priv;

    assert(p->public.ao_needs_update);
    assert(!p->ao);

    p->public.ao_needs_update = 0;

    p->ao = ao;

    int out_format = 0;
    int out_rate = 0;
    struct mp_chmap out_channels = {0};
    ao_get_format(p->ao, &out_rate, &out_format, &out_channels);

    mp_autoconvert_clear(p->convert);
    mp_autoconvert_add_afmt(p->convert, out_format);
    mp_autoconvert_add_srate(p->convert, out_rate);
    mp_autoconvert_add_chmap(p->convert, &out_channels);

    mp_autoconvert_format_change_continue(p->convert);


    mp_aframe_reset(p->public.output_aformat);
}
