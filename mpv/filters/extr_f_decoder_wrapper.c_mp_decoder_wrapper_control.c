
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct priv {TYPE_2__* decoder; } ;
struct mp_decoder_wrapper {TYPE_1__* f; } ;
typedef enum dec_ctrl { ____Placeholder_dec_ctrl } dec_ctrl ;
struct TYPE_4__ {int (* control ) (int ,int,void*) ;int f; } ;
struct TYPE_3__ {struct priv* priv; } ;


 int CONTROL_UNKNOWN ;
 int stub1 (int ,int,void*) ;

int mp_decoder_wrapper_control(struct mp_decoder_wrapper *d,
                               enum dec_ctrl cmd, void *arg)
{
    struct priv *p = d->f->priv;
    if (p->decoder && p->decoder->control)
        return p->decoder->control(p->decoder->f, cmd, arg);
    return CONTROL_UNKNOWN;
}
