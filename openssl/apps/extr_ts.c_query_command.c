
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TS_REQ ;
typedef int EVP_MD ;
typedef int BIO ;


 int BIO_free_all (int *) ;
 int ERR_print_errors (int ) ;
 int FORMAT_ASN1 ;
 int FORMAT_TEXT ;
 int TS_REQ_free (int *) ;
 int TS_REQ_print_bio (int *,int *) ;
 int bio_err ;
 int * bio_open_default (char const*,char,int ) ;
 int * create_query (int *,char const*,int const*,char const*,int,int) ;
 int * d2i_TS_REQ_bio (int *,int *) ;
 int i2d_TS_REQ_bio (int *,int *) ;

__attribute__((used)) static int query_command(const char *data, const char *digest, const EVP_MD *md,
                         const char *policy, int no_nonce,
                         int cert, const char *in, const char *out, int text)
{
    int ret = 0;
    TS_REQ *query = ((void*)0);
    BIO *in_bio = ((void*)0);
    BIO *data_bio = ((void*)0);
    BIO *out_bio = ((void*)0);


    if (in != ((void*)0)) {
        if ((in_bio = bio_open_default(in, 'r', FORMAT_ASN1)) == ((void*)0))
            goto end;
        query = d2i_TS_REQ_bio(in_bio, ((void*)0));
    } else {
        if (digest == ((void*)0)
            && (data_bio = bio_open_default(data, 'r', FORMAT_ASN1)) == ((void*)0))
            goto end;
        query = create_query(data_bio, digest, md, policy, no_nonce, cert);
    }
    if (query == ((void*)0))
        goto end;

    if (text) {
        if ((out_bio = bio_open_default(out, 'w', FORMAT_TEXT)) == ((void*)0))
            goto end;
        if (!TS_REQ_print_bio(out_bio, query))
            goto end;
    } else {
        if ((out_bio = bio_open_default(out, 'w', FORMAT_ASN1)) == ((void*)0))
            goto end;
        if (!i2d_TS_REQ_bio(out_bio, query))
            goto end;
    }

    ret = 1;

 end:
    ERR_print_errors(bio_err);
    BIO_free_all(in_bio);
    BIO_free_all(data_bio);
    BIO_free_all(out_bio);
    TS_REQ_free(query);
    return ret;
}
