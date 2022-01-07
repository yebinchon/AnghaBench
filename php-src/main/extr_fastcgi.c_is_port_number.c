
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int is_port_number(const char *bindpath)
{
 while (*bindpath) {
  if (*bindpath < '0' || *bindpath > '9') {
   return 0;
  }
  bindpath++;
 }
 return 1;
}
