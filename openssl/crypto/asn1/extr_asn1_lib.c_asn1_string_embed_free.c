
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; struct TYPE_4__* data; } ;
typedef TYPE_1__ ASN1_STRING ;


 int ASN1_STRING_FLAG_NDEF ;
 int OPENSSL_free (TYPE_1__*) ;

void asn1_string_embed_free(ASN1_STRING *a, int embed)
{
    if (a == ((void*)0))
        return;
    if (!(a->flags & ASN1_STRING_FLAG_NDEF))
        OPENSSL_free(a->data);
    if (embed == 0)
        OPENSSL_free(a);
}
