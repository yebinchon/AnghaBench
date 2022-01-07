
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cookie; int (* close_fn ) (int ) ;} ;
struct priv {TYPE_1__ info; } ;
struct TYPE_5__ {struct priv* priv; } ;
typedef TYPE_2__ stream_t ;


 int stub1 (int ) ;

__attribute__((used)) static void s_close(stream_t *s)
{
    struct priv *p = s->priv;
    p->info.close_fn(p->info.cookie);
}
