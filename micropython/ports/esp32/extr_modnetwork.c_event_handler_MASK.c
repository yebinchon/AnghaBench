#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int wifi_mode_t ;
struct TYPE_7__ {int /*<<< orphan*/  reason; } ;
struct TYPE_5__ {TYPE_3__ disconnected; } ;
struct TYPE_6__ {int event_id; TYPE_1__ event_info; } ;
typedef  TYPE_2__ system_event_t ;
typedef  TYPE_3__ system_event_sta_disconnected_t ;
typedef  int esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 int ESP_OK ; 
#define  SYSTEM_EVENT_ETH_CONNECTED 140 
#define  SYSTEM_EVENT_ETH_DISCONNECTED 139 
#define  SYSTEM_EVENT_ETH_GOT_IP 138 
#define  SYSTEM_EVENT_ETH_START 137 
#define  SYSTEM_EVENT_ETH_STOP 136 
#define  SYSTEM_EVENT_GOT_IP6 135 
#define  SYSTEM_EVENT_STA_CONNECTED 134 
#define  SYSTEM_EVENT_STA_DISCONNECTED 133 
#define  SYSTEM_EVENT_STA_GOT_IP 132 
#define  SYSTEM_EVENT_STA_START 131 
 int /*<<< orphan*/  WIFI_IF_STA ; 
 int WIFI_MODE_STA ; 
#define  WIFI_REASON_AUTH_FAIL 130 
#define  WIFI_REASON_BEACON_TIMEOUT 129 
#define  WIFI_REASON_NO_AP_FOUND 128 
 int FUNC1 () ; 
 int FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int mdns_initialised ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  wifi_sta_connect_requested ; 
 int wifi_sta_connected ; 
 int /*<<< orphan*/  wifi_sta_disconn_reason ; 

__attribute__((used)) static esp_err_t FUNC7(void *ctx, system_event_t *event) {
   switch(event->event_id) {
    case SYSTEM_EVENT_STA_START:
        FUNC0("wifi", "STA_START");
        break;
    case SYSTEM_EVENT_STA_CONNECTED:
        FUNC0("network", "CONNECTED");
        break;
    case SYSTEM_EVENT_STA_GOT_IP:
        FUNC0("network", "GOT_IP");
        wifi_sta_connected = true;
        wifi_sta_disconn_reason = 0; // Success so clear error. (in case of new error will be replaced anyway)
        #if MICROPY_HW_ENABLE_MDNS_QUERIES || MICROPY_HW_ENABLE_MDNS_RESPONDER
        if (!mdns_initialised) {
            mdns_init();
            #if MICROPY_HW_ENABLE_MDNS_RESPONDER
            const char *hostname = NULL;
            if (tcpip_adapter_get_hostname(WIFI_IF_STA, &hostname) != ESP_OK || hostname == NULL) {
                hostname = "esp32";
            }
            mdns_hostname_set(hostname);
            mdns_instance_name_set(hostname);
            #endif
            mdns_initialised = true;
        }
        #endif
        break;
    case SYSTEM_EVENT_STA_DISCONNECTED: {
        // This is a workaround as ESP32 WiFi libs don't currently
        // auto-reassociate.
        system_event_sta_disconnected_t *disconn = &event->event_info.disconnected;
        char *message = "";
        wifi_sta_disconn_reason = disconn->reason;
        switch (disconn->reason) {
            case WIFI_REASON_BEACON_TIMEOUT:
                // AP has dropped out; try to reconnect.
                message = "\nbeacon timeout";
                break;
            case WIFI_REASON_NO_AP_FOUND:
                // AP may not exist, or it may have momentarily dropped out; try to reconnect.
                message = "\nno AP found";
                break;
            case WIFI_REASON_AUTH_FAIL:
                // Password may be wrong, or it just failed to connect; try to reconnect.
                message = "\nauthentication failed";
                break;
            default:
                // Let other errors through and try to reconnect.
                break;
        }
        FUNC0("wifi", "STA_DISCONNECTED, reason:%d%s", disconn->reason, message);

        wifi_sta_connected = false;
        if (wifi_sta_connect_requested) {
            wifi_mode_t mode;
            if (FUNC2(&mode) == ESP_OK) {
                if (mode & WIFI_MODE_STA) {
                    // STA is active so attempt to reconnect.
                    esp_err_t e = FUNC1();
                    if (e != ESP_OK) {
                        FUNC0("wifi", "error attempting to reconnect: 0x%04x", e);
                    }
                }
            }
        }
        break;
    }
    case SYSTEM_EVENT_GOT_IP6:
        FUNC0("network", "Got IPv6");
        break;
    case SYSTEM_EVENT_ETH_START:
        FUNC0("ethernet", "start");
        break;
    case SYSTEM_EVENT_ETH_STOP:
        FUNC0("ethernet", "stop");
        break;
    case SYSTEM_EVENT_ETH_CONNECTED:
        FUNC0("ethernet", "LAN cable connected");
        break;
    case SYSTEM_EVENT_ETH_DISCONNECTED:
        FUNC0("ethernet", "LAN cable disconnected");
        break;
    case SYSTEM_EVENT_ETH_GOT_IP:
        FUNC0("ethernet", "Got IP");
        break;
    default:
        FUNC0("network", "event %d", event->event_id);
        break;
    }
    return ESP_OK;
}