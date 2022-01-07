
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int mrb_bool ;





 int FALSE ;
 int TRUE ;
 int bigendian_p () ;

__attribute__((used)) static mrb_bool
dump_bigendian_p(uint8_t flags)
{
  switch (flags & 128) {
  case 130:
    return TRUE;
  case 129:
    return FALSE;
  default:
  case 128:
    return bigendian_p();
  }
}
