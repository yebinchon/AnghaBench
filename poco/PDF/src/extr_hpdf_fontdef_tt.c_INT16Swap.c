
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_INT16 ;
typedef scalar_t__ HPDF_BYTE ;


 int HPDF_MemCpy (scalar_t__*,scalar_t__*,int) ;

__attribute__((used)) static void
INT16Swap (HPDF_INT16 *value)
{
    HPDF_BYTE b[2];

    HPDF_MemCpy (b, (HPDF_BYTE *)value, 2);
    *value = (HPDF_INT16)((HPDF_INT16)b[0] << 8 | (HPDF_INT16)b[1]);
}
