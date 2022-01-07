
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int trace_flags; int wifi_scan_state; int (* wifi_scan_cb ) (int ,int *) ;int wifi_join_state; int pend_rejoin; int pend_rejoin_wpa; int pend_disassoc; int wifi_scan_env; } ;
typedef TYPE_2__ cyw43_t ;
struct TYPE_8__ {int scan_result; } ;
struct TYPE_10__ {scalar_t__ event_type; int status; int reason; int flags; int interface; TYPE_1__ u; } ;
typedef TYPE_3__ cyw43_async_event_t ;


 scalar_t__ CYW43_EV_AUTH ;
 scalar_t__ CYW43_EV_DEAUTH_IND ;
 scalar_t__ CYW43_EV_DISASSOC ;
 scalar_t__ CYW43_EV_ESCAN_RESULT ;
 scalar_t__ CYW43_EV_LINK ;
 scalar_t__ CYW43_EV_PRUNE ;
 scalar_t__ CYW43_EV_PSK_SUP ;
 scalar_t__ CYW43_EV_SET_SSID ;
 int CYW43_ITF_STA ;
 int CYW43_TRACE_ASYNC_EV ;
 int PENDSV_DISPATCH_CYW43 ;
 int WIFI_JOIN_STATE_ACTIVE ;
 int WIFI_JOIN_STATE_ALL ;
 int WIFI_JOIN_STATE_AUTH ;
 void* WIFI_JOIN_STATE_BADAUTH ;
 int WIFI_JOIN_STATE_FAIL ;
 int WIFI_JOIN_STATE_KEYED ;
 int WIFI_JOIN_STATE_LINK ;
 int WIFI_JOIN_STATE_NONET ;
 int cyw43_dump_async_event (TYPE_3__ const*) ;
 int cyw43_poll_func ;
 int cyw43_tcpip_set_link_down (TYPE_2__*,int ) ;
 int cyw43_tcpip_set_link_up (TYPE_2__*,int ) ;
 int pendsv_schedule_dispatch (int ,int ) ;
 int stub1 (int ,int *) ;

void cyw43_cb_process_async_event(void *cb_data, const cyw43_async_event_t *ev) {
    cyw43_t *self = cb_data;

    if (self->trace_flags & CYW43_TRACE_ASYNC_EV) {
        cyw43_dump_async_event(ev);
    }

    if (ev->event_type == CYW43_EV_ESCAN_RESULT && self->wifi_scan_state == 1) {

        if (ev->status == 8) {

            int ret = self->wifi_scan_cb(self->wifi_scan_env, &ev->u.scan_result);
            if (ret != 0) {

            }
        } else if (ev->status == 0) {

            self->wifi_scan_state = 2;
        }

    } else if (ev->event_type == CYW43_EV_DISASSOC) {
        cyw43_tcpip_set_link_down(self, CYW43_ITF_STA);
        self->wifi_join_state = 0x0000;
    } else if (ev->event_type == CYW43_EV_PRUNE) {
        if (ev->status == 0 && ev->reason == 8) {

            self->pend_rejoin = 1;
            self->pend_rejoin_wpa = 1;
            pendsv_schedule_dispatch(PENDSV_DISPATCH_CYW43, cyw43_poll_func);
        }
    } else if (ev->event_type == CYW43_EV_SET_SSID) {
        if (ev->status == 0) {

        } else if (ev->status == 3 && ev->reason == 0) {
            self->wifi_join_state = WIFI_JOIN_STATE_NONET;

        } else {

            self->wifi_join_state = WIFI_JOIN_STATE_FAIL;
        }
    } else if (ev->event_type == CYW43_EV_AUTH) {
        if (ev->status == 0) {
            self->wifi_join_state |= WIFI_JOIN_STATE_AUTH;
        } else if (ev->status == 6) {

        } else {

            self->wifi_join_state = WIFI_JOIN_STATE_BADAUTH;
        }
    } else if (ev->event_type == CYW43_EV_DEAUTH_IND) {
        if (ev->status == 0 && ev->reason == 2) {

            self->pend_disassoc = 1;
            pendsv_schedule_dispatch(PENDSV_DISPATCH_CYW43, cyw43_poll_func);
        }
    } else if (ev->event_type == CYW43_EV_LINK) {
        if (ev->status == 0) {
            if (ev->flags & 1) {

                if (ev->interface == CYW43_ITF_STA) {
                    self->wifi_join_state |= WIFI_JOIN_STATE_LINK;
                } else {
                    cyw43_tcpip_set_link_up(self, ev->interface);
                }
            } else {

                cyw43_tcpip_set_link_down(self, ev->interface);
            }
        }
    } else if (ev->event_type == CYW43_EV_PSK_SUP) {
        if (ev->status == 6) {
            self->wifi_join_state |= WIFI_JOIN_STATE_KEYED;
        } else if ((ev->status == 4 || ev->status == 8 || ev->status == 11) && ev->reason == 15) {


            self->pend_rejoin = 1;
            pendsv_schedule_dispatch(PENDSV_DISPATCH_CYW43, cyw43_poll_func);
        } else {

            self->wifi_join_state = WIFI_JOIN_STATE_BADAUTH;
        }
    }

    if (self->wifi_join_state == WIFI_JOIN_STATE_ALL) {

        self->wifi_join_state = WIFI_JOIN_STATE_ACTIVE;
        cyw43_tcpip_set_link_up(self, CYW43_ITF_STA);
    }
}
