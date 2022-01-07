
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPSTR ;
typedef int HCRYPTPROV ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 scalar_t__ CryptSetProvParam (int ,int ,int const*,int ) ;
 scalar_t__ FALSE ;
 int PP_KEYEXCHANGE_PIN ;
 int PP_SIGNATURE_PIN ;
 int PRINT_ERROR_AUTO (char*) ;
 scalar_t__ TRUE ;

BOOL makePin(HCRYPTPROV hProv, BOOL isHw, LPSTR pin)
{
 BOOL status = FALSE;
 if(isHw && pin)
 {
  if(!(status = CryptSetProvParam(hProv, PP_KEYEXCHANGE_PIN, (const BYTE *) pin, 0)))
  {
   PRINT_ERROR_AUTO(L"CryptSetProvParam(PP_KEYEXCHANGE_PIN)");
   if(!(status = CryptSetProvParam(hProv, PP_SIGNATURE_PIN, (const BYTE *) pin, 0)))
    PRINT_ERROR_AUTO(L"CryptSetProvParam(PP_SIGNATURE_PIN)");
  }
 }
 else status = TRUE;
 return status;
}
