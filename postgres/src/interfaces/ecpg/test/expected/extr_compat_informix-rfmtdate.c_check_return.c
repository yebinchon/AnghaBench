
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

__attribute__((used)) static void
check_return(int ret)
{
 switch(ret)
 {
  case 128:
   printf("(ECPG_INFORMIX_ENOTDMY)");
   break;
  case 129:
   printf("(ECPG_INFORMIX_ENOSHORTDATE)");
   break;
  case 131:
   printf("(ECPG_INFORMIX_BAD_DAY)");
   break;
  case 130:
   printf("(ECPG_INFORMIX_BAD_MONTH)");
   break;
  default:
   printf("(unknown ret: %d)", ret);
   break;
 }
 printf("\n");
}
