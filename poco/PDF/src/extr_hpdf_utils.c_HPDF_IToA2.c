
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_UINT32 ;
typedef int HPDF_UINT ;


 int HPDF_LIMIT_MAX_INT ;

char*
HPDF_IToA2 (char *s,
             HPDF_UINT32 val,
             HPDF_UINT len)
{
    char* t;
    char* u;

    if (val > HPDF_LIMIT_MAX_INT)
        val = HPDF_LIMIT_MAX_INT;

    u = s + len - 1;
    *u = 0;
    t = u - 1;
    while (val > 0 && t >= s) {
        *t = (char)((char)(val % 10) + '0');
        val /= 10;
        t--;
    }

    while (s <= t)
        *t-- = '0';

    return s + len - 1;
}
