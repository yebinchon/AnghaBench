
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int retval; scalar_t__ name; } ;
typedef TYPE_1__ STRINT_PAIR ;
typedef int SSL ;


 int BIO_printf (int ,char*,...) ;
 int BIO_puts (int ,char*) ;
 int CERT_PKEY_SUITEB ;
 int SSL_CERT_FLAG_SUITEB_128_LOS ;
 int SSL_set_cert_flags (int *,int ) ;
 int bio_err ;
 TYPE_1__* chain_flags ;

__attribute__((used)) static void print_chain_flags(SSL *s, int flags)
{
    STRINT_PAIR *pp;

    for (pp = chain_flags; pp->name; ++pp)
        BIO_printf(bio_err, "\t%s: %s\n",
                   pp->name,
                   (flags & pp->retval) ? "OK" : "NOT OK");
    BIO_printf(bio_err, "\tSuite B: ");
    if (SSL_set_cert_flags(s, 0) & SSL_CERT_FLAG_SUITEB_128_LOS)
        BIO_puts(bio_err, flags & CERT_PKEY_SUITEB ? "OK\n" : "NOT OK\n");
    else
        BIO_printf(bio_err, "not tested\n");
}
