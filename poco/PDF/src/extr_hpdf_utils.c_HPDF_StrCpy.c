
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_BYTE ;



HPDF_BYTE*
HPDF_StrCpy (char *out,
              const char *in,
              char *eptr)
{
    if (in != ((void*)0)) {
        while (eptr > out && *in != 0)
            *out++ = *in++;
    }

    *out = 0;

    return (HPDF_BYTE *)out;
}
