
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; unsigned char const* iobuf; int iobuflen; int asn1_len; int max_resp_len; int mem; int io; } ;
typedef TYPE_1__ OCSP_REQ_CTX ;


 int BIO_flush (int ) ;
 void* BIO_get_mem_data (int ,unsigned char const**) ;
 int BIO_gets (int ,char*,int) ;
 int BIO_read (int ,unsigned char const*,int) ;
 int BIO_reset (int ) ;
 scalar_t__ BIO_should_retry (int ) ;
 int BIO_write (int ,...) ;
 int OHS_NOREAD ;
 int V_ASN1_CONSTRUCTED ;
 int V_ASN1_SEQUENCE ;
 int memchr (unsigned char const*,char,int) ;
 int parse_http_line1 (char*) ;

int OCSP_REQ_CTX_nbio(OCSP_REQ_CTX *rctx)
{
    int i, n;
    const unsigned char *p;
 next_io:
    if (!(rctx->state & OHS_NOREAD)) {
        n = BIO_read(rctx->io, rctx->iobuf, rctx->iobuflen);

        if (n <= 0) {
            if (BIO_should_retry(rctx->io))
                return -1;
            return 0;
        }



        if (BIO_write(rctx->mem, rctx->iobuf, n) != n)
            return 0;
    }

    switch (rctx->state) {
    case 128:

        if (BIO_write(rctx->mem, "\r\n", 2) != 2) {
            rctx->state = 131;
            return 0;
        }
        rctx->state = 133;


    case 133:
        rctx->asn1_len = BIO_get_mem_data(rctx->mem, ((void*)0));
        rctx->state = 134;


    case 134:
        n = BIO_get_mem_data(rctx->mem, &p);

        i = BIO_write(rctx->io, p + (n - rctx->asn1_len), rctx->asn1_len);

        if (i <= 0) {
            if (BIO_should_retry(rctx->io))
                return -1;
            rctx->state = 131;
            return 0;
        }

        rctx->asn1_len -= i;

        if (rctx->asn1_len > 0)
            goto next_io;

        rctx->state = 136;

        (void)BIO_reset(rctx->mem);


    case 136:

        i = BIO_flush(rctx->io);

        if (i > 0) {
            rctx->state = 130;
            goto next_io;
        }

        if (BIO_should_retry(rctx->io))
            return -1;

        rctx->state = 131;
        return 0;

    case 131:
        return 0;

    case 130:
    case 129:



 next_line:





        n = BIO_get_mem_data(rctx->mem, &p);
        if ((n <= 0) || !memchr(p, '\n', n)) {
            if (n >= rctx->iobuflen) {
                rctx->state = 131;
                return 0;
            }
            goto next_io;
        }
        n = BIO_gets(rctx->mem, (char *)rctx->iobuf, rctx->iobuflen);

        if (n <= 0) {
            if (BIO_should_retry(rctx->mem))
                goto next_io;
            rctx->state = 131;
            return 0;
        }


        if (n == rctx->iobuflen) {
            rctx->state = 131;
            return 0;
        }


        if (rctx->state == 130) {
            if (parse_http_line1((char *)rctx->iobuf)) {
                rctx->state = 129;
                goto next_line;
            } else {
                rctx->state = 131;
                return 0;
            }
        } else {

            for (p = rctx->iobuf; *p; p++) {
                if ((*p != '\r') && (*p != '\n'))
                    break;
            }
            if (*p)
                goto next_line;

            rctx->state = 135;

        }



    case 135:





        n = BIO_get_mem_data(rctx->mem, &p);
        if (n < 2)
            goto next_io;


        if (*p++ != (V_ASN1_SEQUENCE | V_ASN1_CONSTRUCTED)) {
            rctx->state = 131;
            return 0;
        }


        if (*p & 0x80) {




            if (n < 6)
                goto next_io;
            n = *p & 0x7F;

            if (!n || (n > 4)) {
                rctx->state = 131;
                return 0;
            }
            p++;
            rctx->asn1_len = 0;
            for (i = 0; i < n; i++) {
                rctx->asn1_len <<= 8;
                rctx->asn1_len |= *p++;
            }

            if (rctx->asn1_len > rctx->max_resp_len) {
                rctx->state = 131;
                return 0;
            }

            rctx->asn1_len += n + 2;
        } else
            rctx->asn1_len = *p + 2;

        rctx->state = 137;



    case 137:
        n = BIO_get_mem_data(rctx->mem, ((void*)0));
        if (n < (int)rctx->asn1_len)
            goto next_io;

        rctx->state = 132;
        return 1;

    case 132:
        return 1;

    }

    return 0;

}
