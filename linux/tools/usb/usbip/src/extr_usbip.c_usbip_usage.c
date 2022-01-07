
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*) ;
 char* usbip_usage_string ;

__attribute__((used)) static void usbip_usage(void)
{
 printf("usage: %s", usbip_usage_string);
}
