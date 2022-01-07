
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vo {TYPE_1__* driver; int * osd; int * hwdec_devs; } ;
struct mp_output_chain {TYPE_2__* f; } ;
struct TYPE_6__ {int rotate90; struct vo* dr_vo; int * osd; int * hwdec_devs; } ;
struct chain {struct vo* vo; TYPE_3__ stream_info; } ;
struct TYPE_5__ {struct chain* priv; } ;
struct TYPE_4__ {int caps; } ;


 int VO_CAP_ROTATE90 ;
 int update_output_caps (struct chain*) ;

void mp_output_chain_set_vo(struct mp_output_chain *c, struct vo *vo)
{
    struct chain *p = c->f->priv;

    p->stream_info.hwdec_devs = vo ? vo->hwdec_devs : ((void*)0);
    p->stream_info.osd = vo ? vo->osd : ((void*)0);
    p->stream_info.rotate90 = vo ? vo->driver->caps & VO_CAP_ROTATE90 : 0;
    p->stream_info.dr_vo = vo;
    p->vo = vo;
    update_output_caps(p);
}
