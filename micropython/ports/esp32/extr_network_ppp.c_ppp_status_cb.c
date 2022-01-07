
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int addr; } ;
struct TYPE_6__ {TYPE_1__ ip4; } ;
struct TYPE_7__ {TYPE_2__ u_addr; } ;
struct netif {TYPE_3__ ip_addr; } ;
typedef int ppp_pcb ;
struct TYPE_8__ {int connected; int clean_close; int pcb; } ;
typedef TYPE_4__ ppp_if_obj_t ;





 struct netif* ppp_netif (int ) ;

__attribute__((used)) static void ppp_status_cb(ppp_pcb *pcb, int err_code, void *ctx) {
    ppp_if_obj_t* self = ctx;
    struct netif *pppif = ppp_netif(self->pcb);

    switch (err_code) {
        case 129:
            self->connected = (pppif->ip_addr.u_addr.ip4.addr != 0);
            break;
        case 128:
            self->clean_close = 1;
            break;
        case 130:
            self->connected = 0;
            break;
        default:
            break;
    }
}
