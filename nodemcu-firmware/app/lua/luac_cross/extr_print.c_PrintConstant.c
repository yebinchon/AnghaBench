
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * k; } ;
typedef int TValue ;
typedef TYPE_1__ Proto ;


 char* LUA_NUMBER_FMT ;




 int PrintString (int ) ;
 int bvalue (int const*) ;
 int nvalue (int const*) ;
 int printf (char*,...) ;
 int rawtsvalue (int const*) ;
 int ttype (int const*) ;

__attribute__((used)) static void PrintConstant(const Proto* f, int i)
{
 const TValue* o=&f->k[i];
 switch (ttype(o))
 {
  case 130:
 printf("nil");
 break;
  case 131:
 printf(bvalue(o) ? "true" : "false");
 break;
  case 129:
 printf(LUA_NUMBER_FMT,nvalue(o));
 break;
  case 128:
 PrintString(rawtsvalue(o));
 break;
  default:
 printf("? type=%d",ttype(o));
 break;
 }
}
