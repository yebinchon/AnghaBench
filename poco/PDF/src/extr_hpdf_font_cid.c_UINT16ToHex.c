
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_UINT16 ;
typedef int HPDF_BYTE ;


 int HPDF_MemCpy (int*,int*,int) ;

__attribute__((used)) static char*
UINT16ToHex (char *s,
              HPDF_UINT16 val,
              char *eptr,
              HPDF_BYTE width)
{
    HPDF_BYTE b[2];
    HPDF_UINT16 val2;
    char c;

    if (eptr - s < 7)
        return s;


    HPDF_MemCpy (b, (HPDF_BYTE *)&val, 2);
    val2 = (HPDF_UINT16)((HPDF_UINT16)b[0] << 8 | (HPDF_UINT16)b[1]);

    HPDF_MemCpy (b, (HPDF_BYTE *)&val2, 2);

    *s++ = '<';
    if (width == 2) {
        c = b[0] >> 4;
        if (c <= 9)
            c += 0x30;
        else
            c += 0x41 - 10;
        *s++ = c;

        c = (char)(b[0] & 0x0f);
        if (c <= 9)
            c += 0x30;
        else
            c += 0x41 - 10;
        *s++ = c;
    }

    c = (char)(b[1] >> 4);
    if (c <= 9)
        c += 0x30;
    else
        c += 0x41 - 10;
    *s++ = c;

    c = (char)(b[1] & 0x0f);
    if (c <= 9)
        c += 0x30;
    else
        c += 0x41 - 10;
    *s++ = c;

    *s++ = '>';
    *s = 0;

    return s;
}
