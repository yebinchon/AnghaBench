
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int spiffs ;


 int SPIFFS_CHECK_MOUNT (int *) ;

u8_t SPIFFS_mounted(spiffs *fs) {
  return SPIFFS_CHECK_MOUNT(fs);
}
