
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wifi_mode_t ;
struct TYPE_7__ {int reason; } ;
struct TYPE_5__ {TYPE_3__ disconnected; } ;
struct TYPE_6__ {int event_id; TYPE_1__ event_info; } ;
typedef TYPE_2__ system_event_t ;
typedef TYPE_3__ system_event_sta_disconnected_t ;
typedef int esp_err_t ;


 int ESP_LOGI (char*,char*,...) ;
 int ESP_OK ;
 int WIFI_IF_STA ;
 int WIFI_MODE_STA ;



 int esp_wifi_connect () ;
 int esp_wifi_get_mode (int*) ;
 int mdns_hostname_set (char const*) ;
 int mdns_init () ;
 int mdns_initialised ;
 int mdns_instance_name_set (char const*) ;
 int tcpip_adapter_get_hostname (int ,char const**) ;
 int wifi_sta_connect_requested ;
 int wifi_sta_connected ;
 int wifi_sta_disconn_reason ;

__attribute__((used)) static esp_err_t event_handler(void *ctx, system_event_t *event) {
   switch(event->event_id) {
    case 131:
        ESP_LOGI("wifi", "STA_START");
        break;
    case 134:
        ESP_LOGI("network", "CONNECTED");
        break;
    case 132:
        ESP_LOGI("network", "GOT_IP");
        wifi_sta_connected = 1;
        wifi_sta_disconn_reason = 0;
        break;
    case 133: {


        system_event_sta_disconnected_t *disconn = &event->event_info.disconnected;
        char *message = "";
        wifi_sta_disconn_reason = disconn->reason;
        switch (disconn->reason) {
            case 129:

                message = "\nbeacon timeout";
                break;
            case 128:

                message = "\nno AP found";
                break;
            case 130:

                message = "\nauthentication failed";
                break;
            default:

                break;
        }
        ESP_LOGI("wifi", "STA_DISCONNECTED, reason:%d%s", disconn->reason, message);

        wifi_sta_connected = 0;
        if (wifi_sta_connect_requested) {
            wifi_mode_t mode;
            if (esp_wifi_get_mode(&mode) == ESP_OK) {
                if (mode & WIFI_MODE_STA) {

                    esp_err_t e = esp_wifi_connect();
                    if (e != ESP_OK) {
                        ESP_LOGI("wifi", "error attempting to reconnect: 0x%04x", e);
                    }
                }
            }
        }
        break;
    }
    case 135:
        ESP_LOGI("network", "Got IPv6");
        break;
    case 137:
        ESP_LOGI("ethernet", "start");
        break;
    case 136:
        ESP_LOGI("ethernet", "stop");
        break;
    case 140:
        ESP_LOGI("ethernet", "LAN cable connected");
        break;
    case 139:
        ESP_LOGI("ethernet", "LAN cable disconnected");
        break;
    case 138:
        ESP_LOGI("ethernet", "Got IP");
        break;
    default:
        ESP_LOGI("network", "event %d", event->event_id);
        break;
    }
    return ESP_OK;
}
