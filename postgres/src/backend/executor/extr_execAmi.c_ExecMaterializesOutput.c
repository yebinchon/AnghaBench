
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NodeTag ;
bool
ExecMaterializesOutput(NodeTag plantype)
{
 switch (plantype)
 {
  case 132:
  case 133:
  case 129:
  case 134:
  case 131:
  case 128:
  case 130:
   return 1;

  default:
   break;
 }

 return 0;
}
