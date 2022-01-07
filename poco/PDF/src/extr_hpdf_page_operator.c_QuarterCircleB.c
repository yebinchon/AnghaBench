
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_REAL ;


 char* HPDF_FToA (char*,int,char*) ;
 scalar_t__ HPDF_StrCpy (char*,char*,char*) ;
 int KAPPA ;

__attribute__((used)) static char*
QuarterCircleB (char *pbuf,
                 char *eptr,
                 HPDF_REAL x,
                 HPDF_REAL y,
                 HPDF_REAL ray)
{
    pbuf = HPDF_FToA (pbuf, x + ray * KAPPA, eptr);
    *pbuf++ = ' ';
    pbuf = HPDF_FToA (pbuf, y + ray, eptr);
    *pbuf++ = ' ';
    pbuf = HPDF_FToA (pbuf, x + ray, eptr);
    *pbuf++ = ' ';
    pbuf = HPDF_FToA (pbuf, y + ray * KAPPA, eptr);
    *pbuf++ = ' ';
    pbuf = HPDF_FToA (pbuf, x + ray, eptr);
    *pbuf++ = ' ';
    pbuf = HPDF_FToA (pbuf, y, eptr);
    return (char *)HPDF_StrCpy (pbuf, " c\012", eptr);
}
