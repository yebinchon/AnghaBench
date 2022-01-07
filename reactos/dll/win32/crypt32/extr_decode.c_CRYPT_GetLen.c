
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 scalar_t__ CMSG_INDEFINITE_LENGTH ;
 int CRYPT_E_ASN1_CORRUPT ;
 int CRYPT_GetLengthIndefinite (int const*,scalar_t__,scalar_t__*) ;
 int FALSE ;
 int SetLastError (int ) ;

__attribute__((used)) static BOOL CRYPT_GetLen(const BYTE *pbEncoded, DWORD cbEncoded, DWORD *len)
{
    BOOL ret;

    if ((ret = CRYPT_GetLengthIndefinite(pbEncoded, cbEncoded, len)) &&
     *len == CMSG_INDEFINITE_LENGTH)
    {
        SetLastError(CRYPT_E_ASN1_CORRUPT);
        ret = FALSE;
    }
    return ret;
}
