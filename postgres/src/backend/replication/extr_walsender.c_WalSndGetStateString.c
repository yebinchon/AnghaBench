
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WalSndState ;
__attribute__((used)) static const char *
WalSndGetStateString(WalSndState state)
{
 switch (state)
 {
  case 130:
   return "startup";
  case 132:
   return "backup";
  case 131:
   return "catchup";
  case 128:
   return "streaming";
  case 129:
   return "stopping";
 }
 return "UNKNOWN";
}
