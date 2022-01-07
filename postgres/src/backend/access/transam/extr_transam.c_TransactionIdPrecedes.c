
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32 ;
typedef scalar_t__ TransactionId ;


 int TransactionIdIsNormal (scalar_t__) ;

bool
TransactionIdPrecedes(TransactionId id1, TransactionId id2)
{




 int32 diff;

 if (!TransactionIdIsNormal(id1) || !TransactionIdIsNormal(id2))
  return (id1 < id2);

 diff = (int32) (id1 - id2);
 return (diff < 0);
}
