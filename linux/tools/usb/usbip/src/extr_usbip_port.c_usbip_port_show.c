
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (char*) ;
 int list_imported_devices () ;

int usbip_port_show(__attribute__((unused)) int argc,
      __attribute__((unused)) char *argv[])
{
 int ret;

 ret = list_imported_devices();
 if (ret < 0)
  err("list imported devices");

 return ret;
}
