
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32 ;


 char* psprintf (char*,...) ;

__attribute__((used)) static char *
anytime_typmodout(bool istz, int32 typmod)
{
 const char *tz = istz ? " with time zone" : " without time zone";

 if (typmod >= 0)
  return psprintf("(%d)%s", (int) typmod, tz);
 else
  return psprintf("%s", tz);
}
