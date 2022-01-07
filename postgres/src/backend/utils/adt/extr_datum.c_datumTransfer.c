
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int CurrentMemoryContext ;
 int DatumGetPointer (int ) ;
 int TransferExpandedObject (int ,int ) ;
 scalar_t__ VARATT_IS_EXTERNAL_EXPANDED_RW (int ) ;
 int datumCopy (int ,int,int) ;

Datum
datumTransfer(Datum value, bool typByVal, int typLen)
{
 if (!typByVal && typLen == -1 &&
  VARATT_IS_EXTERNAL_EXPANDED_RW(DatumGetPointer(value)))
  value = TransferExpandedObject(value, CurrentMemoryContext);
 else
  value = datumCopy(value, typByVal, typLen);
 return value;
}
