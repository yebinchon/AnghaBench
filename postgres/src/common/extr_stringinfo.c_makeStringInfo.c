
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfoData ;
typedef scalar_t__ StringInfo ;


 int initStringInfo (scalar_t__) ;
 scalar_t__ palloc (int) ;

StringInfo
makeStringInfo(void)
{
 StringInfo res;

 res = (StringInfo) palloc(sizeof(StringInfoData));

 initStringInfo(res);

 return res;
}
