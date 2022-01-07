
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int buf ;
struct TYPE_5__ {int length; int data; } ;
typedef TYPE_1__ ASN1_INTEGER ;


 int ASN1_INTEGER_free (TYPE_1__*) ;
 TYPE_1__* ASN1_INTEGER_new () ;
 int BIO_printf (int ,char*) ;
 int OPENSSL_free (int ) ;
 scalar_t__ RAND_bytes (unsigned char*,int) ;
 int app_malloc (int,char*) ;
 int bio_err ;
 int memcpy (int ,unsigned char*,int) ;

__attribute__((used)) static ASN1_INTEGER *create_nonce(int bits)
{
    unsigned char buf[20];
    ASN1_INTEGER *nonce = ((void*)0);
    int len = (bits - 1) / 8 + 1;
    int i;

    if (len > (int)sizeof(buf))
        goto err;
    if (RAND_bytes(buf, len) <= 0)
        goto err;


    for (i = 0; i < len && !buf[i]; ++i)
        continue;
    if ((nonce = ASN1_INTEGER_new()) == ((void*)0))
        goto err;
    OPENSSL_free(nonce->data);
    nonce->length = len - i;
    nonce->data = app_malloc(nonce->length + 1, "nonce buffer");
    memcpy(nonce->data, buf + i, nonce->length);
    return nonce;

 err:
    BIO_printf(bio_err, "could not create nonce\n");
    ASN1_INTEGER_free(nonce);
    return ((void*)0);
}
