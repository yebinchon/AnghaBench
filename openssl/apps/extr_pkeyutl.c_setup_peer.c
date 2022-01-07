
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef int ENGINE ;


 int BIO_printf (int ,char*,char const*) ;
 int ERR_print_errors (int ) ;
 int EVP_PKEY_derive_set_peer (int *,int *) ;
 int EVP_PKEY_free (int *) ;
 int FORMAT_ENGINE ;
 int bio_err ;
 int * load_pubkey (char const*,int,int ,int *,int *,char*) ;

__attribute__((used)) static int setup_peer(EVP_PKEY_CTX *ctx, int peerform, const char *file,
                      ENGINE *e)
{
    EVP_PKEY *peer = ((void*)0);
    ENGINE *engine = ((void*)0);
    int ret;

    if (peerform == FORMAT_ENGINE)
        engine = e;
    peer = load_pubkey(file, peerform, 0, ((void*)0), engine, "Peer Key");
    if (peer == ((void*)0)) {
        BIO_printf(bio_err, "Error reading peer key %s\n", file);
        ERR_print_errors(bio_err);
        return 0;
    }

    ret = EVP_PKEY_derive_set_peer(ctx, peer);

    EVP_PKEY_free(peer);
    if (ret <= 0)
        ERR_print_errors(bio_err);
    return ret;
}
