
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int buffer_queue; } ;
struct ao {struct priv* priv; } ;


 int buffer_callback (int ,struct ao*) ;

__attribute__((used)) static void resume(struct ao *ao)
{
    struct priv *p = ao->priv;
    buffer_callback(p->buffer_queue, ao);
}
