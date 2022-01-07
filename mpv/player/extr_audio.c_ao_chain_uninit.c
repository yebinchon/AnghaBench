
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct track {TYPE_1__* dec; struct ao_chain* ao_c; } ;
struct ao_chain {scalar_t__ dec_src; scalar_t__* pins; struct ao_chain* ao_buffer; struct ao_chain* output_frame; TYPE_2__* filter; scalar_t__ filter_src; struct track* track; } ;
struct TYPE_4__ {struct ao_chain* f; } ;
struct TYPE_3__ {struct ao_chain* f; } ;


 int assert (int) ;
 int mp_pin_disconnect (scalar_t__) ;
 int talloc_free (struct ao_chain*) ;

__attribute__((used)) static void ao_chain_uninit(struct ao_chain *ao_c)
{
    struct track *track = ao_c->track;
    if (track) {
        assert(track->ao_c == ao_c);
        track->ao_c = ((void*)0);
        if (ao_c->dec_src)
            assert(track->dec->f->pins[0] == ao_c->dec_src);
        talloc_free(track->dec->f);
        track->dec = ((void*)0);
    }

    if (ao_c->filter_src)
        mp_pin_disconnect(ao_c->filter_src);

    talloc_free(ao_c->filter->f);
    talloc_free(ao_c->output_frame);
    talloc_free(ao_c->ao_buffer);
    talloc_free(ao_c);
}
