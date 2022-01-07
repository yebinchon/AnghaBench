
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransState ;
__attribute__((used)) static const char *
TransStateAsString(TransState state)
{
 switch (state)
 {
  case 131:
   return "DEFAULT";
  case 128:
   return "START";
  case 130:
   return "INPROGRESS";
  case 132:
   return "COMMIT";
  case 133:
   return "ABORT";
  case 129:
   return "PREPARE";
 }
 return "UNRECOGNIZED";
}
