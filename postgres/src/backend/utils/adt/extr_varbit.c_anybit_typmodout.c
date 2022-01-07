
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;


 scalar_t__ palloc (int) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static char *
anybit_typmodout(int32 typmod)
{
 char *res = (char *) palloc(64);

 if (typmod >= 0)
  snprintf(res, 64, "(%d)", typmod);
 else
  *res = '\0';

 return res;
}
