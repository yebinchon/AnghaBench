
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HPDF_UINT ;
typedef int HPDF_BYTE ;


 scalar_t__ HPDF_MemCmp (int *,int *,scalar_t__) ;
 scalar_t__ HPDF_StrLen (char const*,int) ;

const char*
HPDF_StrStr (const char *s1,
              const char *s2,
              HPDF_UINT maxlen)
{
    HPDF_UINT len = HPDF_StrLen (s2, -1);

    if (!s1)
        return ((void*)0);

    if (len == 0)
        return s1;

    if (maxlen == 0)
        maxlen = HPDF_StrLen (s1, -1);

    if (maxlen < len)
        return ((void*)0);

    maxlen -= len;
    maxlen++;

    while (maxlen > 0) {
        if (HPDF_MemCmp ((HPDF_BYTE *)s1, (HPDF_BYTE *)s2, len) == 0)
            return s1;

        s1++;
        maxlen--;
    }

    return ((void*)0);
}
