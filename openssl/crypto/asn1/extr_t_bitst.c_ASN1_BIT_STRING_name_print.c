
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* lname; int bitnum; } ;
typedef TYPE_1__ BIT_STRING_BITNAME ;
typedef int BIO ;
typedef int ASN1_BIT_STRING ;


 scalar_t__ ASN1_BIT_STRING_get_bit (int *,int ) ;
 int BIO_printf (int *,char*,int,char*) ;
 int BIO_puts (int *,char*) ;

int ASN1_BIT_STRING_name_print(BIO *out, ASN1_BIT_STRING *bs,
                               BIT_STRING_BITNAME *tbl, int indent)
{
    BIT_STRING_BITNAME *bnam;
    char first = 1;
    BIO_printf(out, "%*s", indent, "");
    for (bnam = tbl; bnam->lname; bnam++) {
        if (ASN1_BIT_STRING_get_bit(bs, bnam->bitnum)) {
            if (!first)
                BIO_puts(out, ", ");
            BIO_puts(out, bnam->lname);
            first = 0;
        }
    }
    BIO_puts(out, "\n");
    return 1;
}
