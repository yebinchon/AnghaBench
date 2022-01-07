
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HPDF_MD5Context {int* bits; int * in; int buf; } ;
typedef int HPDF_UINT32 ;
typedef int HPDF_BYTE ;


 int HPDF_MemCpy (int *,int const*,int) ;
 int MD5ByteReverse (int *,int) ;
 int MD5Transform (int ,int*) ;

void
HPDF_MD5Update (struct HPDF_MD5Context *ctx,
                 const HPDF_BYTE *buf,
                 HPDF_UINT32 len)
{
    HPDF_UINT32 t;



    t = ctx->bits[0];
    if ((ctx->bits[0] = t + ((HPDF_UINT32) len << 3)) < t)
        ctx->bits[1]++;
    ctx->bits[1] += len >> 29;

    t = (t >> 3) & 0x3f;



    if (t) {
        HPDF_BYTE *p = (HPDF_BYTE *) ctx->in + t;

        t = 64 - t;
        if (len < t)
        {
            HPDF_MemCpy (p, buf, len);
            return;
        }
        HPDF_MemCpy (p, buf, t);
        MD5ByteReverse (ctx->in, 16);
        MD5Transform (ctx->buf, (HPDF_UINT32 *) ctx->in);
        buf += t;
        len -= t;
    }


    while (len >= 64) {
        HPDF_MemCpy (ctx->in, buf, 64);
        MD5ByteReverse (ctx->in, 16);
        MD5Transform (ctx->buf, (HPDF_UINT32 *) ctx->in);
        buf += 64;
        len -= 64;
    }



    HPDF_MemCpy (ctx->in, buf, len);
}
