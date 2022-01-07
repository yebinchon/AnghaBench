
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int plaintext; int seq; int iv; int key; } ;
struct TYPE_5__ {unsigned char* data; unsigned char* input; size_t length; } ;
typedef TYPE_1__ SSL3_RECORD ;
typedef TYPE_2__ RECORD_DATA ;


 scalar_t__ EVP_GCM_TLS_TAG_LEN ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_hexstr2buf (int ,int *) ;
 unsigned char* OPENSSL_malloc (scalar_t__) ;
 size_t SEQ_NUM_SIZE ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 unsigned char* multihexstr2buf (int ,size_t*) ;

__attribute__((used)) static int load_record(SSL3_RECORD *rec, RECORD_DATA *recd, unsigned char **key,
                       unsigned char *iv, size_t ivlen, unsigned char *seq)
{
    unsigned char *pt = ((void*)0), *sq = ((void*)0), *ivtmp = ((void*)0);
    size_t ptlen;

    *key = OPENSSL_hexstr2buf(recd->key, ((void*)0));
    ivtmp = OPENSSL_hexstr2buf(recd->iv, ((void*)0));
    sq = OPENSSL_hexstr2buf(recd->seq, ((void*)0));
    pt = multihexstr2buf(recd->plaintext, &ptlen);

    if (*key == ((void*)0) || ivtmp == ((void*)0) || sq == ((void*)0) || pt == ((void*)0))
        goto err;

    rec->data = rec->input = OPENSSL_malloc(ptlen + EVP_GCM_TLS_TAG_LEN);

    if (rec->data == ((void*)0))
        goto err;

    rec->length = ptlen;
    memcpy(rec->data, pt, ptlen);
    OPENSSL_free(pt);
    memcpy(seq, sq, SEQ_NUM_SIZE);
    OPENSSL_free(sq);
    memcpy(iv, ivtmp, ivlen);
    OPENSSL_free(ivtmp);

    return 1;
 err:
    OPENSSL_free(*key);
    *key = ((void*)0);
    OPENSSL_free(ivtmp);
    OPENSSL_free(sq);
    OPENSSL_free(pt);
    return 0;
}
