
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
 int RI_TRIGGER_FK ;
 int RI_TRIGGER_NONE ;
 int RI_TRIGGER_PK ;

int
RI_FKey_trigger_type(Oid tgfoid)
{
 switch (tgfoid)
 {
  case 139:
  case 138:
  case 133:
  case 132:
  case 129:
  case 128:
  case 131:
  case 130:
  case 135:
  case 134:
   return RI_TRIGGER_PK;

  case 137:
  case 136:
   return RI_TRIGGER_FK;
 }

 return RI_TRIGGER_NONE;
}
