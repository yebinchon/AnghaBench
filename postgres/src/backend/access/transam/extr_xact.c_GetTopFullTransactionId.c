
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FullTransactionId ;


 int AssignTransactionId (int *) ;
 int FullTransactionIdIsValid (int ) ;
 int TopTransactionStateData ;
 int XactTopFullTransactionId ;

FullTransactionId
GetTopFullTransactionId(void)
{
 if (!FullTransactionIdIsValid(XactTopFullTransactionId))
  AssignTransactionId(&TopTransactionStateData);
 return XactTopFullTransactionId;
}
