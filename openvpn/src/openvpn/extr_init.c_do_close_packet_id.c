
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int pid_persist; } ;
struct TYPE_5__ {int packet_id; } ;
struct TYPE_6__ {TYPE_1__ crypto_options; } ;
struct context {TYPE_4__ c1; TYPE_3__* sig; TYPE_2__ c2; } ;
struct TYPE_7__ {scalar_t__ signal_received; } ;


 scalar_t__ SIGUSR1 ;
 int packet_id_free (int *) ;
 int packet_id_persist_close (int *) ;
 int packet_id_persist_save (int *) ;

__attribute__((used)) static void
do_close_packet_id(struct context *c)
{
    packet_id_free(&c->c2.crypto_options.packet_id);
    packet_id_persist_save(&c->c1.pid_persist);
    if (!(c->sig->signal_received == SIGUSR1))
    {
        packet_id_persist_close(&c->c1.pid_persist);
    }
}
