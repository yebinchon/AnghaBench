
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 size_t ASN1_BUF_PRINT_WIDTH ;
 int ASN1_PRINT_MAX_INDENT ;
 int BIO_indent (int *,int,int ) ;
 scalar_t__ BIO_printf (int *,char*,unsigned char const,char*) ;
 scalar_t__ BIO_puts (int *,char*) ;
 scalar_t__ BIO_write (int *,char*,int) ;

int ASN1_buf_print(BIO *bp, const unsigned char *buf, size_t buflen, int indent)
{
    size_t i;

    for (i = 0; i < buflen; i++) {
        if ((i % ASN1_BUF_PRINT_WIDTH) == 0) {
            if (i > 0 && BIO_puts(bp, "\n") <= 0)
                return 0;
            if (!BIO_indent(bp, indent, ASN1_PRINT_MAX_INDENT))
                return 0;
        }




        if (BIO_printf(bp, "%02x%s", buf[i],
                       (i == buflen - 1) ? "" : ":") <= 0)
                return 0;
    }
    if (BIO_write(bp, "\n", 1) <= 0)
        return 0;
    return 1;
}
