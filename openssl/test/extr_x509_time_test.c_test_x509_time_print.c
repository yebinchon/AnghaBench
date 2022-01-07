
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* readable; int asn1; } ;
typedef int BIO ;


 int ASN1_TIME_print (int *,int *) ;
 int BIO_free (int *) ;
 int BIO_get_mem_data (int *,char**) ;
 int * BIO_new (int ) ;
 int BIO_s_mem () ;
 int TEST_int_eq (int,int) ;
 int TEST_int_ne (int,int ) ;
 int TEST_ptr (int *) ;
 int TEST_str_eq (char const*,char*) ;
 int TEST_strn_eq (char*,char const*,int) ;
 scalar_t__ strlen (char const*) ;
 TYPE_1__* x509_print_tests ;

__attribute__((used)) static int test_x509_time_print(int idx)
{
    BIO *m;
    int ret = 0, rv;
    char *pp;
    const char *readable;

    if (!TEST_ptr(m = BIO_new(BIO_s_mem())))
        goto err;

    rv = ASN1_TIME_print(m, &x509_print_tests[idx].asn1);
    readable = x509_print_tests[idx].readable;

    if (rv == 0 && !TEST_str_eq(readable, "Bad time value")) {

        goto err;
    }
    if (!TEST_int_ne(rv = BIO_get_mem_data(m, &pp), 0)
        || !TEST_int_eq(rv, (int)strlen(readable))
        || !TEST_strn_eq(pp, readable, rv))
        goto err;

    ret = 1;
 err:
    BIO_free(m);
    return ret;
}
