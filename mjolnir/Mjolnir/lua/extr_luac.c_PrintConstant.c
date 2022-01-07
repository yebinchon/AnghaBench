
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * k; } ;
typedef int TValue ;
typedef TYPE_1__ Proto ;


 char* LUA_INTEGER_FMT ;
 char* LUA_NUMBER_FMT ;






 int PrintString (int ) ;
 int bvalue (int const*) ;
 int fltvalue (int const*) ;
 int ivalue (int const*) ;
 int printf (char*,...) ;
 int sprintf (char*,char*,int ) ;
 size_t strspn (char*,char*) ;
 int tsvalue (int const*) ;
 int ttype (int const*) ;

__attribute__((used)) static void PrintConstant(const Proto* f, int i)
{
 const TValue* o=&f->k[i];
 switch (ttype(o))
 {
  case 131:
 printf("nil");
 break;
  case 133:
 printf(bvalue(o) ? "true" : "false");
 break;
  case 130:
 {
 char buff[100];
 sprintf(buff,LUA_NUMBER_FMT,fltvalue(o));
 printf("%s",buff);
 if (buff[strspn(buff,"-0123456789")]=='\0') printf(".0");
 break;
 }
  case 129:
 printf(LUA_INTEGER_FMT,ivalue(o));
 break;
  case 128: case 132:
 PrintString(tsvalue(o));
 break;
  default:
 printf("? type=%d",ttype(o));
 break;
 }
}
