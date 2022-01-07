
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_UINT16 ;
typedef scalar_t__ HPDF_BYTE ;


 int HPDF_MemCpy (scalar_t__*,scalar_t__*,int) ;

void
HPDF_UInt16Swap (HPDF_UINT16 *value)
{
    HPDF_BYTE u[2];

    HPDF_MemCpy (u, (HPDF_BYTE*)value, 2);
    *value = (HPDF_UINT16)((HPDF_UINT16)u[0] << 8 | (HPDF_UINT16)u[1]);
}
