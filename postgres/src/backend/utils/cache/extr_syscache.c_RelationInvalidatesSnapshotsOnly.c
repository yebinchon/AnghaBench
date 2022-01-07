
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
bool
RelationInvalidatesSnapshotsOnly(Oid relid)
{
 switch (relid)
 {
  case 134:
  case 133:
  case 130:
  case 132:
  case 129:
  case 131:
  case 128:
   return 1;
  default:
   break;
 }

 return 0;
}
