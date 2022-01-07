
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HPDF_UINT ;
typedef scalar_t__ const HPDF_INT ;
typedef scalar_t__ HPDF_BYTE ;



HPDF_INT
HPDF_MemCmp (const HPDF_BYTE *s1,
              const HPDF_BYTE *s2,
              HPDF_UINT n)
{
    if (n == 0)
        return 0;

    while (*s1 == *s2) {
        n--;
        if (n == 0)
            return 0;
        s1++;
        s2++;
    }

    return *s1 - *s2;
}
