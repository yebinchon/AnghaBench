
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_UINT32 ;
typedef scalar_t__ HPDF_BYTE ;


 int HPDF_MemCpy (scalar_t__*,scalar_t__*,int) ;

__attribute__((used)) static void
UINT32Swap (HPDF_UINT32 *value)
{
    HPDF_BYTE b[4];

    HPDF_MemCpy (b, (HPDF_BYTE *)value, 4);
    *value = (HPDF_UINT32)((HPDF_UINT32)b[0] << 24 |
             (HPDF_UINT32)b[1] << 16 |
             (HPDF_UINT32)b[2] << 8 |
             (HPDF_UINT32)b[3]);
}
