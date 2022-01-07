
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char* uint8_t ;
struct tlsa_field {unsigned char** member_0; char* member_1; scalar_t__ (* parser ) (char const*,scalar_t__) ;int name; scalar_t__ var; int const member_2; } ;
typedef scalar_t__ ossl_ssize_t ;
typedef int SSL ;


 int OPENSSL_free (unsigned char* const) ;
 int SSL_dane_tlsa_add (int *,unsigned char* const,unsigned char* const,unsigned char* const,unsigned char* const,scalar_t__) ;
 int TEST_info (char*,char const*,...) ;


 scalar_t__ stub1 (char const*,scalar_t__) ;

__attribute__((used)) static int tlsa_import_rr(SSL *ssl, const char *rrdata)
{
    static uint8_t usage;
    static uint8_t selector;
    static uint8_t mtype;
    static unsigned char *data = ((void*)0);
    static struct tlsa_field tlsa_fields[] = {
        { &usage, "usage", 129 },
        { &selector, "selector", 129 },
        { &mtype, "mtype", 129 },
        { &data, "data", 128 },
        { ((void*)0), }
    };
    int ret;
    struct tlsa_field *f;
    const char *cp = rrdata;
    ossl_ssize_t len = 0;

    for (f = tlsa_fields; f->var; ++f) {
        if ((len = f->parser(cp += len, f->var)) <= 0) {
            TEST_info("bad TLSA %s field in: %s", f->name, rrdata);
            return 0;
        }
    }

    ret = SSL_dane_tlsa_add(ssl, usage, selector, mtype, data, len);
    OPENSSL_free(data);
    if (ret == 0) {
        TEST_info("unusable TLSA rrdata: %s", rrdata);
        return 0;
    }
    if (ret < 0) {
        TEST_info("error loading TLSA rrdata: %s", rrdata);
        return 0;
    }

    return ret;
}
