
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DateADT ;


 scalar_t__ DATE_IS_NOBEGIN (int ) ;
 scalar_t__ DATE_IS_NOEND (int ) ;
 int EARLY ;
 int ERROR ;
 int LATE ;
 int elog (int ,char*) ;
 int strcpy (char*,int ) ;

void
EncodeSpecialDate(DateADT dt, char *str)
{
 if (DATE_IS_NOBEGIN(dt))
  strcpy(str, EARLY);
 else if (DATE_IS_NOEND(dt))
  strcpy(str, LATE);
 else
  elog(ERROR, "invalid argument for EncodeSpecialDate");
}
