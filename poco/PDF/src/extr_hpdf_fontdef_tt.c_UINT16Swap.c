
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_UINT16 ;
typedef scalar_t__ HPDF_BYTE ;


 int HPDF_MemCpy (scalar_t__*,scalar_t__*,int) ;

__attribute__((used)) static void
UINT16Swap (HPDF_UINT16 *value)
{
    HPDF_BYTE b[2];

    HPDF_MemCpy (b, (HPDF_BYTE *)value, 2);
    *value = (HPDF_UINT16)((HPDF_UINT16)b[0] << 8 | (HPDF_UINT16)b[1]);
}
