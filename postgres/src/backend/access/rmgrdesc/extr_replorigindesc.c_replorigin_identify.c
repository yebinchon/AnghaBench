
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;





const char *
replorigin_identify(uint8 info)
{
 switch (info)
 {
  case 128:
   return "SET";
  case 129:
   return "DROP";
  default:
   return ((void*)0);
 }
}
