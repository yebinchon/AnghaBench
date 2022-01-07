
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int date ;


 int ECPG_INFORMIX_BAD_DAY ;
 int ECPG_INFORMIX_BAD_MONTH ;
 int ECPG_INFORMIX_BAD_YEAR ;
 int ECPG_INFORMIX_ENOSHORTDATE ;
 int ECPG_INFORMIX_ENOTDMY ;





 scalar_t__ PGTYPESdate_defmt_asc (int *,char const*,char const*) ;
 int errno ;

int
rdefmtdate(date * d, const char *fmt, const char *str)
{



 errno = 0;
 if (PGTYPESdate_defmt_asc(d, fmt, str) == 0)
  return 0;

 switch (errno)
 {
  case 129:
   return ECPG_INFORMIX_ENOSHORTDATE;
  case 130:
  case 128:
   return ECPG_INFORMIX_ENOTDMY;
  case 132:
   return ECPG_INFORMIX_BAD_DAY;
  case 131:
   return ECPG_INFORMIX_BAD_MONTH;
  default:
   return ECPG_INFORMIX_BAD_YEAR;
 }
}
