
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp ;


 int EARLY ;
 int LATE ;
 scalar_t__ TIMESTAMP_IS_NOBEGIN (int ) ;
 scalar_t__ TIMESTAMP_IS_NOEND (int ) ;
 int abort () ;
 int strcpy (char*,int ) ;

__attribute__((used)) static void
EncodeSpecialTimestamp(timestamp dt, char *str)
{
 if (TIMESTAMP_IS_NOBEGIN(dt))
  strcpy(str, EARLY);
 else if (TIMESTAMP_IS_NOEND(dt))
  strcpy(str, LATE);
 else
  abort();
}
