
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;



__attribute__((used)) static bool is_hash(st32 hash_code)
{
 bool ret;

 switch(hash_code) {
  case 0xE8:
  case 0xE9:
  case 0xEA:
  case 0xEC:
  case 0x1A8:
  case 0x1DC:
  case 0x1E1:
  case 0x1E2:
  case 0x1E3:
  case 0x1E4:
   ret = 1;
   break;
  default:
  ret = 0;
 }

 return ret;
}
