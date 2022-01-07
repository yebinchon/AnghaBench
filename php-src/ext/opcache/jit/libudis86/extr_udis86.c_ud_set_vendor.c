
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ud {unsigned int vendor; } ;


 unsigned int UD_VENDOR_AMD ;



extern void
ud_set_vendor(struct ud* u, unsigned v)
{
  switch(v) {
  case 128:
    u->vendor = v;
    break;
  case 129:
    u->vendor = v;
    break;
  default:
    u->vendor = UD_VENDOR_AMD;
  }
}
