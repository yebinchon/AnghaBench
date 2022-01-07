
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stmt; } ;
typedef TYPE_1__ RawStmt ;
 int nodeTag (int ) ;

bool
analyze_requires_snapshot(RawStmt *parseTree)
{
 bool result;

 switch (nodeTag(parseTree->stmt))
 {



  case 130:
  case 132:
  case 128:
  case 129:
   result = 1;
   break;




  case 133:
  case 131:
  case 134:

   result = 1;
   break;

  default:

   result = 0;
   break;
 }

 return result;
}
