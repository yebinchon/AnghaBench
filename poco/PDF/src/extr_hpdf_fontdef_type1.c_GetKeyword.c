
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HPDF_UINT ;


 scalar_t__ HPDF_IS_WHITE_SPACE (char const) ;
 int HPDF_PTRACE (char*) ;
 scalar_t__ HPDF_StrLen (char const*,int) ;

__attribute__((used)) static const char*
GetKeyword (const char *src,
             char *keyword,
             HPDF_UINT len)
{
    HPDF_UINT src_len = HPDF_StrLen (src, -1);

    HPDF_PTRACE ((" GetKeyword\n"));

    if (!keyword || src_len == 0 || len == 0)
        return ((void*)0);

    *keyword = 0;

    while (len > 1) {
        if (HPDF_IS_WHITE_SPACE(*src)) {
            *keyword = 0;

            while (HPDF_IS_WHITE_SPACE(*src))
                src++;
            return src;
        }

        *keyword++ = *src++;
        len--;
    }

    *keyword = 0;
    return ((void*)0);
}
