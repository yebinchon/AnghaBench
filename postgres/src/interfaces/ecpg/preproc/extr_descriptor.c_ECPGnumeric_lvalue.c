
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct variable {TYPE_1__* type; } ;
struct TYPE_2__ {int type; } ;
 int ET_ERROR ;
 int PARSE_ERROR ;
 int base_yyout ;
 struct variable* find_variable (char*) ;
 int fputs (char*,int ) ;
 int mmerror (int ,int ,char*,char*) ;

__attribute__((used)) static void
ECPGnumeric_lvalue(char *name)
{
 const struct variable *v = find_variable(name);

 switch (v->type->type)
 {
  case 132:
  case 135:
  case 134:
  case 133:
  case 128:
  case 131:
  case 130:
  case 129:
  case 136:
   fputs(name, base_yyout);
   break;
  default:
   mmerror(PARSE_ERROR, ET_ERROR, "variable \"%s\" must have a numeric type", name);
   break;
 }
}
