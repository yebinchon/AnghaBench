
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char* uint8_t ;
struct tlsa_field {unsigned char** member_0; char* member_1; int name; scalar_t__ var; int (* parser ) (char const**,scalar_t__) ;int const member_2; } ;
typedef int ossl_ssize_t ;
typedef int SSL ;


 int BIO_printf (int ,char*,int ,char const*,...) ;
 int ERR_print_errors (int ) ;
 int OPENSSL_free (unsigned char* const) ;
 int SSL_dane_tlsa_add (int *,unsigned char* const,unsigned char* const,unsigned char* const,unsigned char* const,int ) ;
 int bio_err ;


 int prog ;
 int stub1 (char const**,scalar_t__) ;

__attribute__((used)) static int tlsa_import_rr(SSL *con, const char *rrdata)
{

    static uint8_t usage;
    static uint8_t selector;
    static uint8_t mtype;
    static unsigned char *data;
    static struct tlsa_field tlsa_fields[] = {
        { &usage, "usage", 129 },
        { &selector, "selector", 129 },
        { &mtype, "mtype", 129 },
        { &data, "data", 128 },
        { ((void*)0), }
    };
    struct tlsa_field *f;
    int ret;
    const char *cp = rrdata;
    ossl_ssize_t len = 0;

    for (f = tlsa_fields; f->var; ++f) {

        if ((len = f->parser(&cp, f->var)) <= 0) {
            BIO_printf(bio_err, "%s: warning: bad TLSA %s field in: %s\n",
                       prog, f->name, rrdata);
            return 0;
        }
    }

    ret = SSL_dane_tlsa_add(con, usage, selector, mtype, data, len);
    OPENSSL_free(data);

    if (ret == 0) {
        ERR_print_errors(bio_err);
        BIO_printf(bio_err, "%s: warning: unusable TLSA rrdata: %s\n",
                   prog, rrdata);
        return 0;
    }
    if (ret < 0) {
        ERR_print_errors(bio_err);
        BIO_printf(bio_err, "%s: warning: error loading TLSA rrdata: %s\n",
                   prog, rrdata);
        return 0;
    }
    return ret;
}
