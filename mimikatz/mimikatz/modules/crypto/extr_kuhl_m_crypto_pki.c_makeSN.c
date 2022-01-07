
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cbData; scalar_t__ pbData; } ;
typedef TYPE_1__* PCRYPT_INTEGER_BLOB ;
typedef scalar_t__ PBYTE ;
typedef scalar_t__ LPCWCHAR ;
typedef scalar_t__ BOOL ;


 int CDGenerateRandomBits (scalar_t__,int) ;
 scalar_t__ FALSE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int LocalFree (scalar_t__) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int PRINT_ERROR (char*,scalar_t__) ;
 scalar_t__ kull_m_string_stringToHexBuffer (scalar_t__,scalar_t__*,int*) ;

BOOL makeSN(LPCWCHAR szSn, PCRYPT_INTEGER_BLOB sn)
{
 BOOL status = FALSE;
 if(szSn)
 {
  status = kull_m_string_stringToHexBuffer(szSn, &sn->pbData, &sn->cbData);
  if(!status)
   PRINT_ERROR(L"Unable to use \'%s\' as a HEX string\n", szSn);
 }
 else
 {
  sn->cbData = 20;
  if(sn->pbData = (PBYTE) LocalAlloc(LPTR, sn->cbData))
  {
   status = NT_SUCCESS(CDGenerateRandomBits(sn->pbData, sn->cbData));
   if(!status)
    LocalFree(sn->pbData);
  }
 }
 return status;
}
