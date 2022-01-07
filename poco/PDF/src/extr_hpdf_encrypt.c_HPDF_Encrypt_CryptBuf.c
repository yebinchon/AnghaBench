
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int arc4ctx; } ;
typedef int HPDF_UINT ;
typedef TYPE_1__* HPDF_Encrypt ;
typedef int HPDF_BYTE ;


 int ARC4CryptBuf (int *,int const*,int *,int ) ;

void
HPDF_Encrypt_CryptBuf (HPDF_Encrypt attr,
                        const HPDF_BYTE *src,
                        HPDF_BYTE *dst,
                        HPDF_UINT len)
{
    ARC4CryptBuf(&attr->arc4ctx, src, dst, len);
}
