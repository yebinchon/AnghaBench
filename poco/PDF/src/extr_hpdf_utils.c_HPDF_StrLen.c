
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_UINT ;
typedef scalar_t__ HPDF_INT ;



HPDF_UINT
HPDF_StrLen (const char *s,
              HPDF_INT maxlen)
{
    HPDF_INT len = 0;

    if (!s)
        return 0;

    while (*s != 0 && (maxlen < 0 || len < maxlen)) {
        s++;
        len++;
    }

    return (HPDF_UINT)len;
}
