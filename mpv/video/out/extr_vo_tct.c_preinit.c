
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vo {int monitor_par; int global; int log; struct priv* priv; TYPE_1__* opts; } ;
struct priv {TYPE_2__* sws; int opts; } ;
struct TYPE_5__ {int log; } ;
struct TYPE_4__ {int monitor_pixel_aspect; } ;


 int mp_get_config_group (struct vo*,int ,int *) ;
 TYPE_2__* mp_sws_alloc (struct vo*) ;
 int mp_sws_enable_cmdline_opts (TYPE_2__*,int ) ;
 int vo_tct_conf ;

__attribute__((used)) static int preinit(struct vo *vo)
{


    vo->monitor_par = vo->opts->monitor_pixel_aspect * 2;

    struct priv *p = vo->priv;
    p->opts = mp_get_config_group(vo, vo->global, &vo_tct_conf);
    p->sws = mp_sws_alloc(vo);
    p->sws->log = vo->log;
    mp_sws_enable_cmdline_opts(p->sws, vo->global);
    return 0;
}
