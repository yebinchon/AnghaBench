
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* old_cb ) (int const*,int const*,int,int,int,void*,void*) ;int verbose; int out; } ;
typedef TYPE_1__ security_debug_ex ;
typedef int SSL_CTX ;
typedef int SSL ;
typedef int EVP_PKEY ;
typedef int DH ;


 int BIO_printf (int ,char*,...) ;
 int BIO_puts (int ,char const*) ;
 char* DH_bits (int *) ;
 char* EC_curve_nid2nist (int) ;
 int EVP_PKEY_asn1_get0_info (int *,int *,int *,int *,char const**,int ) ;
 int EVP_PKEY_bits (int *) ;
 int EVP_PKEY_get0_asn1 (int *) ;
 char const* OBJ_nid2sn (int) ;
 char const* SSL_CIPHER_get_name (void*) ;







 int SSL_SECOP_OTHER_TYPE ;







 int * X509_get0_pubkey (void*) ;
 int X509_get_signature_nid (void*) ;
 int callback_types ;
 char* lookup (int,int ,char*) ;
 int signature_tls12_alg_list ;
 int signature_tls12_hash_list ;
 int signature_tls13_scheme_list ;
 int ssl_versions ;
 int stub1 (int const*,int const*,int,int,int,void*,void*) ;

__attribute__((used)) static int security_callback_debug(const SSL *s, const SSL_CTX *ctx,
                                   int op, int bits, int nid,
                                   void *other, void *ex)
{
    security_debug_ex *sdb = ex;
    int rv, show_bits = 1, cert_md = 0;
    const char *nm;
    int show_nm;
    rv = sdb->old_cb(s, ctx, op, bits, nid, other, ex);
    if (rv == 1 && sdb->verbose < 2)
        return 1;
    BIO_puts(sdb->out, "Security callback: ");

    nm = lookup(op, callback_types, ((void*)0));
    show_nm = nm != ((void*)0);
    switch (op) {
    case 129:
    case 140:
        show_bits = 0;
        show_nm = 0;
        break;
    case 128:
        BIO_printf(sdb->out, "Version=%s", lookup(nid, ssl_versions, "???"));
        show_bits = 0;
        show_nm = 0;
        break;
    case 141:
    case 134:
        cert_md = 1;
        break;
    case 130:
    case 131:
    case 133:
    case 132:
        show_nm = 0;
        break;
    }
    if (show_nm)
        BIO_printf(sdb->out, "%s=", nm);

    switch (op & SSL_SECOP_OTHER_TYPE) {

    case 138:
        BIO_puts(sdb->out, SSL_CIPHER_get_name(other));
        break;


    case 137:
        {
            const char *cname;
            cname = EC_curve_nid2nist(nid);
            if (cname == ((void*)0))
                cname = OBJ_nid2sn(nid);
            BIO_puts(sdb->out, cname);
        }
        break;


    case 136:
        {
            DH *dh = other;
            BIO_printf(sdb->out, "%d", DH_bits(dh));
            break;
        }

    case 139:
        {
            if (cert_md) {
                int sig_nid = X509_get_signature_nid(other);
                BIO_puts(sdb->out, OBJ_nid2sn(sig_nid));
            } else {
                EVP_PKEY *pkey = X509_get0_pubkey(other);
                const char *algname = "";
                EVP_PKEY_asn1_get0_info(((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                        &algname, EVP_PKEY_get0_asn1(pkey));
                BIO_printf(sdb->out, "%s, bits=%d",
                           algname, EVP_PKEY_bits(pkey));
            }
            break;
        }
    case 135:
        {
            const unsigned char *salg = other;
            const char *sname = ((void*)0);
            int raw_sig_code = (salg[0] << 8) + salg[1];


            if (nm != ((void*)0))
                BIO_printf(sdb->out, "%s", nm);
            else
                BIO_printf(sdb->out, "s_cb.c:security_callback_debug op=0x%x", op);

            sname = lookup(raw_sig_code, signature_tls13_scheme_list, ((void*)0));
            if (sname != ((void*)0)) {
                BIO_printf(sdb->out, " scheme=%s", sname);
            } else {
                int alg_code = salg[1];
                int hash_code = salg[0];
                const char *alg_str = lookup(alg_code, signature_tls12_alg_list, ((void*)0));
                const char *hash_str = lookup(hash_code, signature_tls12_hash_list, ((void*)0));

                if (alg_str != ((void*)0) && hash_str != ((void*)0))
                    BIO_printf(sdb->out, " digest=%s, algorithm=%s", hash_str, alg_str);
                else
                    BIO_printf(sdb->out, " scheme=unknown(0x%04x)", raw_sig_code);
            }
        }

    }

    if (show_bits)
        BIO_printf(sdb->out, ", security bits=%d", bits);
    BIO_printf(sdb->out, ": %s\n", rv ? "yes" : "no");
    return rv;
}
