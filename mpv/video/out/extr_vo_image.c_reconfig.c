
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct priv {int current; } ;
struct mp_image_params {int dummy; } ;


 int mp_image_unrefp (int *) ;

__attribute__((used)) static int reconfig(struct vo *vo, struct mp_image_params *params)
{
    struct priv *p = vo->priv;
    mp_image_unrefp(&p->current);

    return 0;
}
