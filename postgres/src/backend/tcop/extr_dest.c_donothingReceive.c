
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleTableSlot ;
typedef int DestReceiver ;



__attribute__((used)) static bool
donothingReceive(TupleTableSlot *slot, DestReceiver *self)
{
 return 1;
}
