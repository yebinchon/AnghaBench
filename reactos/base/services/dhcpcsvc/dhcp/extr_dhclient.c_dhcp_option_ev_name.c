
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dhcp_option {char* name; } ;



int
dhcp_option_ev_name(char *buf, size_t buflen, struct dhcp_option *option)
{
 int i;

 for (i = 0; option->name[i]; i++) {
  if (i + 1 == buflen)
   return 0;
  if (option->name[i] == '-')
   buf[i] = '_';
  else
   buf[i] = option->name[i];
 }

 buf[i] = 0;
 return 1;
}
