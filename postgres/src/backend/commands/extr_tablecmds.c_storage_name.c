
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
storage_name(char c)
{
 switch (c)
 {
  case 'p':
   return "PLAIN";
  case 'm':
   return "MAIN";
  case 'x':
   return "EXTENDED";
  case 'e':
   return "EXTERNAL";
  default:
   return "???";
 }
}
