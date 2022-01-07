
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct priv {int graph_latency_max; int * ports; } ;
struct ao {struct priv* priv; } ;
struct TYPE_3__ {int max; } ;
typedef TYPE_1__ jack_latency_range_t ;


 int JackPlaybackLatency ;
 int atomic_store (int *,int ) ;
 int jack_port_get_latency_range (int ,int ,TYPE_1__*) ;

__attribute__((used)) static int graph_order_cb(void *arg)
{
    struct ao *ao = arg;
    struct priv *p = ao->priv;

    jack_latency_range_t jack_latency_range;
    jack_port_get_latency_range(p->ports[0], JackPlaybackLatency,
                                &jack_latency_range);
    atomic_store(&p->graph_latency_max, jack_latency_range.max);

    return 0;
}
