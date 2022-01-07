
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UInt64 ;
typedef int SRes ;
typedef int CSzData ;


 int RINOK (int ) ;
 int SZ_ERROR_ARCHIVE ;
 int SZ_OK ;
 int SzReadID (int *,scalar_t__*) ;
 int SzSkeepData (int *) ;
 scalar_t__ k7zIdEnd ;

__attribute__((used)) static SRes SzWaitAttribute(CSzData *sd, UInt64 attribute)
{
  for (;;)
  {
    UInt64 type;
    RINOK(SzReadID(sd, &type));
    if (type == attribute)
      return SZ_OK;
    if (type == k7zIdEnd)
      return SZ_ERROR_ARCHIVE;
    RINOK(SzSkeepData(sd));
  }
}
