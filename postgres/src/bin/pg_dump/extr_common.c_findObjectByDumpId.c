
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DumpableObject ;
typedef size_t DumpId ;


 size_t allocedDumpIds ;
 int ** dumpIdMap ;

DumpableObject *
findObjectByDumpId(DumpId dumpId)
{
 if (dumpId <= 0 || dumpId >= allocedDumpIds)
  return ((void*)0);
 return dumpIdMap[dumpId];
}
