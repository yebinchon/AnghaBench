
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_NVS_NEW_VERSION_FOUND ;
 scalar_t__ ESP_ERR_NVS_NO_FREE_PAGES ;
 int MP_TASK_COREID ;
 int MP_TASK_PRIORITY ;
 int MP_TASK_STACK_LEN ;
 int mp_main_task_handle ;
 int mp_task ;
 int nvs_flash_erase () ;
 scalar_t__ nvs_flash_init () ;
 int xTaskCreatePinnedToCore (int ,char*,int ,int *,int ,int *,int ) ;

void app_main(void) {
    esp_err_t ret = nvs_flash_init();
    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        nvs_flash_erase();
        nvs_flash_init();
    }
    xTaskCreatePinnedToCore(mp_task, "mp_task", MP_TASK_STACK_LEN, ((void*)0), MP_TASK_PRIORITY, &mp_main_task_handle, MP_TASK_COREID);
}
