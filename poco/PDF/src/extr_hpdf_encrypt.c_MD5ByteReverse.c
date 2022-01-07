
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_UINT32 ;
typedef int HPDF_BYTE ;



__attribute__((used)) static void
MD5ByteReverse (HPDF_BYTE *buf,
                 HPDF_UINT32 longs)
{
    HPDF_UINT32 t;
    do
    {
        t = (HPDF_UINT32) ((HPDF_UINT32) buf[3] << 8 | buf[2]) << 16 |
        ((HPDF_UINT32) buf[1] << 8 | buf[0]);
        *(HPDF_UINT32 *) buf = t;
        buf += 4;
    }
    while (--longs);
}
