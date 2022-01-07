
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mp_filter_command {scalar_t__ speed; int type; } ;
struct mp_filter {struct aspeed_priv* priv; } ;
struct TYPE_4__ {scalar_t__ filter; } ;
struct aspeed_priv {TYPE_1__ sub; scalar_t__ cur_speed; } ;


 int MP_ERR (struct mp_filter*,char*) ;
 int MP_FILTER_COMMAND_SET_SPEED ;
 int MP_OUTPUT_CHAIN_AUDIO ;
 int MP_VERBOSE (struct mp_filter*,char*) ;
 int fabs (scalar_t__) ;
 scalar_t__ mp_create_user_filter (struct mp_filter*,int ,char*,int *) ;
 int mp_filter_command (scalar_t__,struct mp_filter_command*) ;
 int mp_subfilter_continue (TYPE_1__*) ;
 int mp_subfilter_drain_destroy (TYPE_1__*) ;
 int mp_subfilter_read (TYPE_1__*) ;

__attribute__((used)) static void aspeed_process(struct mp_filter *f)
{
    struct aspeed_priv *p = f->priv;

    if (!mp_subfilter_read(&p->sub))
        return;

    if (fabs(p->cur_speed - 1.0) < 1e-8) {
        if (p->sub.filter)
            MP_VERBOSE(f, "removing scaletempo\n");
        if (!mp_subfilter_drain_destroy(&p->sub))
            return;
    } else if (!p->sub.filter) {
        MP_VERBOSE(f, "adding scaletempo\n");
        p->sub.filter =
            mp_create_user_filter(f, MP_OUTPUT_CHAIN_AUDIO, "scaletempo", ((void*)0));
        if (!p->sub.filter) {
            MP_ERR(f, "could not create scaletempo filter\n");
            mp_subfilter_continue(&p->sub);
            return;
        }
    }

    if (p->sub.filter) {
        struct mp_filter_command cmd = {
            .type = MP_FILTER_COMMAND_SET_SPEED,
            .speed = p->cur_speed,
        };
        mp_filter_command(p->sub.filter, &cmd);
    }

    mp_subfilter_continue(&p->sub);
}
