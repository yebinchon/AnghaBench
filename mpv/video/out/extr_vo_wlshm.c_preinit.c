
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vo {int global; int log; struct priv* priv; } ;
struct priv {TYPE_1__* sws; } ;
struct TYPE_3__ {int log; } ;


 TYPE_1__* mp_sws_alloc (struct vo*) ;
 int mp_sws_enable_cmdline_opts (TYPE_1__*,int ) ;
 int vo_wayland_init (struct vo*) ;

__attribute__((used)) static int preinit(struct vo *vo)
{
    struct priv *p = vo->priv;

    if (!vo_wayland_init(vo))
        return -1;
    p->sws = mp_sws_alloc(vo);
    p->sws->log = vo->log;
    mp_sws_enable_cmdline_opts(p->sws, vo->global);

    return 0;
}
