
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; } ;
typedef TYPE_1__ Value ;
struct TYPE_6__ {int str; int ival; } ;


 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int ERROR ;





 int elog (int ,char*,int) ;
 int type ;
 TYPE_2__ val ;

__attribute__((used)) static bool
_equalValue(const Value *a, const Value *b)
{
 COMPARE_SCALAR_FIELD(type);

 switch (a->type)
 {
  case 130:
   COMPARE_SCALAR_FIELD(val.ival);
   break;
  case 131:
  case 128:
  case 132:
   COMPARE_STRING_FIELD(val.str);
   break;
  case 129:

   break;
  default:
   elog(ERROR, "unrecognized node type: %d", (int) a->type);
   break;
 }

 return 1;
}
