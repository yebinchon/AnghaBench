
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HPDF_MD5Context {int* bits; scalar_t__ buf; int * in; } ;
typedef int ctx ;
typedef int HPDF_UINT32 ;
typedef int HPDF_BYTE ;


 int HPDF_MemCpy (int *,int *,int) ;
 int HPDF_MemSet (int *,int ,int) ;
 int MD5ByteReverse (int *,int) ;
 int MD5Transform (scalar_t__,int*) ;

void
HPDF_MD5Final (HPDF_BYTE digest[16],
                struct HPDF_MD5Context *ctx)
{
    HPDF_UINT32 count;
    HPDF_BYTE *p;


    count = (ctx->bits[0] >> 3) & 0x3F;



    p = ctx->in + count;
    *p++ = 0x80;


    count = 64 - 1 - count;


    if (count < 8) {

        HPDF_MemSet (p, 0, count);
        MD5ByteReverse (ctx->in, 16);
        MD5Transform (ctx->buf, (HPDF_UINT32 *) ctx->in);


        HPDF_MemSet (ctx->in, 0, 56);
    } else {

        HPDF_MemSet (p, 0, count - 8);
    }
    MD5ByteReverse (ctx->in, 14);


    ((HPDF_UINT32 *) ctx->in)[14] = ctx->bits[0];
    ((HPDF_UINT32 *) ctx->in)[15] = ctx->bits[1];

    MD5Transform (ctx->buf, (HPDF_UINT32 *) ctx->in);
    MD5ByteReverse ((HPDF_BYTE *) ctx->buf, 4);
    HPDF_MemCpy ((HPDF_BYTE *)digest, (HPDF_BYTE *)ctx->buf, 16);
    HPDF_MemSet ((HPDF_BYTE *)ctx, 0, sizeof (ctx));
}
