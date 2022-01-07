
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int InvalidOid ;
 scalar_t__ nextTempTableSpace ;
 scalar_t__ numTempTableSpaces ;
 int * tempTableSpaces ;

Oid
GetNextTempTableSpace(void)
{
 if (numTempTableSpaces > 0)
 {

  if (++nextTempTableSpace >= numTempTableSpaces)
   nextTempTableSpace = 0;
  return tempTableSpaces[nextTempTableSpace];
 }
 return InvalidOid;
}
