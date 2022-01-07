
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleTableSlot ;
typedef int Datum ;


 int ERROR ;
 int elog (int ,char*) ;

__attribute__((used)) static Datum
tts_virtual_getsysattr(TupleTableSlot *slot, int attnum, bool *isnull)
{
 elog(ERROR, "virtual tuple table slot does not have system attributes");

 return 0;
}
