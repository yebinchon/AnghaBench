
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * micros; int * millis; int * seconds; } ;
typedef TYPE_1__ TS_ACCURACY ;
typedef int BIO ;


 int BIO_printf (int *,char*) ;
 int TS_ASN1_INTEGER_print_bio (int *,int *) ;

__attribute__((used)) static int ts_ACCURACY_print_bio(BIO *bio, const TS_ACCURACY *a)
{
    if (a->seconds != ((void*)0))
        TS_ASN1_INTEGER_print_bio(bio, a->seconds);
    else
        BIO_printf(bio, "unspecified");
    BIO_printf(bio, " seconds, ");
    if (a->millis != ((void*)0))
        TS_ASN1_INTEGER_print_bio(bio, a->millis);
    else
        BIO_printf(bio, "unspecified");
    BIO_printf(bio, " millis, ");
    if (a->micros != ((void*)0))
        TS_ASN1_INTEGER_print_bio(bio, a->micros);
    else
        BIO_printf(bio, "unspecified");
    BIO_printf(bio, " micros");

    return 1;
}
