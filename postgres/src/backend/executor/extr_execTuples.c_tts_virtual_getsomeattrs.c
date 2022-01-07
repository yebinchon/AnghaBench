
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleTableSlot ;


 int ERROR ;
 int elog (int ,char*) ;

__attribute__((used)) static void
tts_virtual_getsomeattrs(TupleTableSlot *slot, int natts)
{
 elog(ERROR, "getsomeattrs is not required to be called on a virtual tuple table slot");
}
