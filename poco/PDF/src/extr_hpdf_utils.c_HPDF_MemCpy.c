
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HPDF_UINT ;
typedef int HPDF_BYTE ;



HPDF_BYTE*
HPDF_MemCpy (HPDF_BYTE* out,
              const HPDF_BYTE *in,
              HPDF_UINT n)
{
    while (n > 0) {
        *out++ = *in++;
        n--;
    }

    return out;
}
