
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int ESP_OK ;
 int mp_raise_OSError (int ) ;

__attribute__((used)) static inline void check_esp_err(esp_err_t e) {
    if (e != ESP_OK) {
        mp_raise_OSError(-e);
    }
}
