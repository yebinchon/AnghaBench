
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo {int global; struct priv* priv; } ;
struct priv {TYPE_1__* opts; } ;
struct TYPE_2__ {scalar_t__ outdir; } ;


 int checked_mkdir (struct vo*,scalar_t__) ;
 TYPE_1__* mp_get_config_group (struct vo*,int ,int *) ;
 int vo_image_conf ;

__attribute__((used)) static int preinit(struct vo *vo)
{
    struct priv *p = vo->priv;
    p->opts = mp_get_config_group(vo, vo->global, &vo_image_conf);
    if (p->opts->outdir && !checked_mkdir(vo, p->opts->outdir))
        return -1;
    return 0;
}
