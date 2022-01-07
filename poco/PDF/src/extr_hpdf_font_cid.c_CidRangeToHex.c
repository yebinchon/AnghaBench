
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_UINT16 ;
typedef int HPDF_BYTE ;


 char* UINT16ToHex (char*,int,char*,int) ;

__attribute__((used)) static char*
CidRangeToHex (char *s,
                HPDF_UINT16 from,
                HPDF_UINT16 to,
                char *eptr)
{
    HPDF_BYTE width = (to > 255) ? 2 : 1;
    char *pbuf;

    pbuf = UINT16ToHex (s, from, eptr, width);
    *pbuf++ = ' ';
    pbuf = UINT16ToHex (pbuf, to, eptr, width);

    return pbuf;
}
