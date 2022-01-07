
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*) ;
 char* usbipd_help_string ;

__attribute__((used)) static void usbipd_help(void)
{
 printf("%s\n", usbipd_help_string);
}
