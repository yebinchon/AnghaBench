
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_INT ;
typedef int HPDF_BYTE ;



HPDF_INT
HPDF_StrCmp (const char *s1,
              const char *s2)
{
    if (!s1 || !s2) {
        if (!s1 && s2)
            return -1;
        else
            return 1;
    }

    while (*s1 == *s2) {
        s1++;
        s2++;
        if (*s1 == 0 || *s2 == 0)
            break;
    }

    return (HPDF_BYTE)*s1 - (HPDF_BYTE)*s2;
}
