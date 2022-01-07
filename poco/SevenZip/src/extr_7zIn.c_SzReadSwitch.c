
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SRes ;
typedef int CSzData ;
typedef scalar_t__ Byte ;


 int RINOK (int ) ;
 int SZ_ERROR_UNSUPPORTED ;
 int SZ_OK ;
 int SzReadByte (int *,scalar_t__*) ;

__attribute__((used)) static SRes SzReadSwitch(CSzData *sd)
{
  Byte external;
  RINOK(SzReadByte(sd, &external));
  return (external == 0) ? SZ_OK: SZ_ERROR_UNSUPPORTED;
}
