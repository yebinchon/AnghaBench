
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ECPGtype* element; struct ECPGstruct_member* members; } ;
struct ECPGtype {int type; TYPE_1__ u; } ;
struct ECPGstruct_member {struct ECPGtype* type; struct ECPGstruct_member* next; } ;
 int ET_ERROR ;
 int PARSE_ERROR ;
 int mmerror (int ,int ,char*) ;

void
check_indicator(struct ECPGtype *var)
{

 switch (var->type)
 {
   struct ECPGstruct_member *p;

  case 134:
  case 137:
  case 136:
  case 135:
  case 128:
  case 131:
  case 130:
  case 129:
   break;

  case 133:
  case 132:
   for (p = var->u.members; p; p = p->next)
    check_indicator(p->type);
   break;

  case 138:
   check_indicator(var->u.element);
   break;
  default:
   mmerror(PARSE_ERROR, ET_ERROR, "indicator variable must have an integer type");
   break;
 }
}
