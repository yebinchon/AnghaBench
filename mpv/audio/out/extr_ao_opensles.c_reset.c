
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct priv {TYPE_1__** buffer_queue; } ;
struct ao {struct priv* priv; } ;
struct TYPE_2__ {int (* Clear ) (TYPE_1__**) ;} ;


 int stub1 (TYPE_1__**) ;

__attribute__((used)) static void reset(struct ao *ao)
{
    struct priv *p = ao->priv;
    (*p->buffer_queue)->Clear(p->buffer_queue);
}
