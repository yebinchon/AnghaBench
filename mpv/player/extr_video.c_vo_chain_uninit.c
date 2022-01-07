
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vo_chain {scalar_t__ dec_src; scalar_t__* pins; TYPE_2__* filter; scalar_t__ filter_src; struct track* track; } ;
struct track {TYPE_1__* dec; struct vo_chain* vo_c; } ;
struct TYPE_4__ {struct vo_chain* f; } ;
struct TYPE_3__ {struct vo_chain* f; } ;


 int assert (int) ;
 int mp_pin_disconnect (scalar_t__) ;
 int talloc_free (struct vo_chain*) ;

__attribute__((used)) static void vo_chain_uninit(struct vo_chain *vo_c)
{
    struct track *track = vo_c->track;
    if (track) {
        assert(track->vo_c == vo_c);
        track->vo_c = ((void*)0);
        if (vo_c->dec_src)
            assert(track->dec->f->pins[0] == vo_c->dec_src);
        talloc_free(track->dec->f);
        track->dec = ((void*)0);
    }

    if (vo_c->filter_src)
        mp_pin_disconnect(vo_c->filter_src);

    talloc_free(vo_c->filter->f);
    talloc_free(vo_c);

}
