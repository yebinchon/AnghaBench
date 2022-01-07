
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_output_chain {TYPE_1__* f; } ;
struct chain {int num_post_filters; int post_filters; int num_user_filters; int user_filters; } ;
struct TYPE_2__ {struct chain* priv; } ;


 int set_speed_any (int ,int ,int,double*) ;

void mp_output_chain_set_audio_speed(struct mp_output_chain *c,
                                     double speed, double resample)
{
    struct chain *p = c->f->priv;


    set_speed_any(p->post_filters, p->num_post_filters, 1, &resample);



    set_speed_any(p->user_filters, p->num_user_filters, 0, &speed);
    set_speed_any(p->post_filters, p->num_post_filters, 0, &speed);
}
