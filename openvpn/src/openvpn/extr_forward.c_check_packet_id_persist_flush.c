
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pid_persist; } ;
struct TYPE_3__ {int timeval; int packet_id_persist_interval; } ;
struct context {TYPE_2__ c1; TYPE_1__ c2; } ;


 int ETT_DEFAULT ;
 scalar_t__ event_timeout_trigger (int *,int *,int ) ;
 scalar_t__ packet_id_persist_enabled (int *) ;
 int packet_id_persist_save (int *) ;

__attribute__((used)) static inline void
check_packet_id_persist_flush(struct context *c)
{
    if (packet_id_persist_enabled(&c->c1.pid_persist)
        && event_timeout_trigger(&c->c2.packet_id_persist_interval, &c->c2.timeval, ETT_DEFAULT))
    {
        packet_id_persist_save(&c->c1.pid_persist);
    }
}
