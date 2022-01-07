
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Timestamp ;


 int EARLY ;
 int ERROR ;
 int LATE ;
 scalar_t__ TIMESTAMP_IS_NOBEGIN (int ) ;
 scalar_t__ TIMESTAMP_IS_NOEND (int ) ;
 int elog (int ,char*) ;
 int strcpy (char*,int ) ;

void
EncodeSpecialTimestamp(Timestamp dt, char *str)
{
 if (TIMESTAMP_IS_NOBEGIN(dt))
  strcpy(str, EARLY);
 else if (TIMESTAMP_IS_NOEND(dt))
  strcpy(str, LATE);
 else
  elog(ERROR, "invalid argument for EncodeSpecialTimestamp");
}
