
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UInt64 ;
typedef int SRes ;
typedef int CSzData ;


 int RINOK (int ) ;
 int SZ_OK ;
 int SzReadID (int *,scalar_t__*) ;
 int SzSkeepData (int *) ;
 scalar_t__ k7zIdEnd ;

__attribute__((used)) static SRes SzReadArchiveProperties(CSzData *sd)
{
  for (;;)
  {
    UInt64 type;
    RINOK(SzReadID(sd, &type));
    if (type == k7zIdEnd)
      break;
    SzSkeepData(sd);
  }
  return SZ_OK;
}
