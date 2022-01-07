
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int flags; scalar_t__ length; scalar_t__ data; } ;
typedef int BIO ;
typedef TYPE_1__ ASN1_STRING ;


 scalar_t__ BIO_dump_indent (int *,char const*,scalar_t__,int) ;
 scalar_t__ BIO_printf (int *,char*,int) ;
 scalar_t__ BIO_puts (int *,char*) ;
 scalar_t__ V_ASN1_BIT_STRING ;

__attribute__((used)) static int asn1_print_obstring(BIO *out, const ASN1_STRING *str, int indent)
{
    if (str->type == V_ASN1_BIT_STRING) {
        if (BIO_printf(out, " (%ld unused bits)\n", str->flags & 0x7) <= 0)
            return 0;
    } else if (BIO_puts(out, "\n") <= 0)
        return 0;
    if ((str->length > 0)
        && BIO_dump_indent(out, (const char *)str->data, str->length,
                           indent + 2) <= 0)
        return 0;
    return 1;
}
