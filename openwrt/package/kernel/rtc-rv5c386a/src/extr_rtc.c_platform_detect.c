
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 scalar_t__ bcm47xx_nvram_getenv (char*,char*,int) ;
 int scl_index ;
 int sda_index ;
 int simple_strtoul (char*,int *,int ) ;
 scalar_t__ startswith (char*,char*) ;

__attribute__((used)) static void platform_detect(void)
{
 char buf[20];
 int et0phyaddr, et1phyaddr;


 if (bcm47xx_nvram_getenv("model_no", buf, sizeof(buf)) >= 0) {
  if (startswith(buf, "WL700")) {
   sda_index = 2;
   scl_index = 5;
   return;
  }
 }

 if (bcm47xx_nvram_getenv("et0phyaddr", buf, sizeof(buf)) >= 0 )
  et0phyaddr = simple_strtoul(buf, ((void*)0), 0);
 if (bcm47xx_nvram_getenv("et1phyaddr", buf, sizeof(buf)) >= 0 )
  et1phyaddr = simple_strtoul(buf, ((void*)0), 0);

 if (bcm47xx_nvram_getenv("hardware_version", buf, sizeof(buf)) >= 0) {

  if (startswith(buf, "WL300-") && et0phyaddr == 0 && et1phyaddr == 1) {
   sda_index = 4;
   scl_index = 5;
   return;
  }
 }

}
