
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LocalTransactionId ;


 int LocalTransactionIdIsValid (scalar_t__) ;
 int nextLocalTransactionId ;

LocalTransactionId
GetNextLocalTransactionId(void)
{
 LocalTransactionId result;


 do
 {
  result = nextLocalTransactionId++;
 } while (!LocalTransactionIdIsValid(result));

 return result;
}
