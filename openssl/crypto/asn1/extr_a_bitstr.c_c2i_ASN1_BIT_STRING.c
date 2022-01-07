
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; int length; unsigned char* data; int type; } ;
typedef TYPE_1__ ASN1_BIT_STRING ;


 int ASN1_BIT_STRING_free (TYPE_1__*) ;
 TYPE_1__* ASN1_BIT_STRING_new () ;
 int ASN1_F_C2I_ASN1_BIT_STRING ;
 int ASN1_R_INVALID_BIT_STRING_BITS_LEFT ;
 int ASN1_R_STRING_TOO_LONG ;
 int ASN1_R_STRING_TOO_SHORT ;
 int ASN1_STRING_FLAG_BITS_LEFT ;
 int ASN1err (int ,int) ;
 int ERR_R_MALLOC_FAILURE ;
 long INT_MAX ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (int) ;
 int V_ASN1_BIT_STRING ;
 int memcpy (unsigned char*,unsigned char const*,int) ;

ASN1_BIT_STRING *c2i_ASN1_BIT_STRING(ASN1_BIT_STRING **a,
                                     const unsigned char **pp, long len)
{
    ASN1_BIT_STRING *ret = ((void*)0);
    const unsigned char *p;
    unsigned char *s;
    int i;

    if (len < 1) {
        i = ASN1_R_STRING_TOO_SHORT;
        goto err;
    }

    if (len > INT_MAX) {
        i = ASN1_R_STRING_TOO_LONG;
        goto err;
    }

    if ((a == ((void*)0)) || ((*a) == ((void*)0))) {
        if ((ret = ASN1_BIT_STRING_new()) == ((void*)0))
            return ((void*)0);
    } else
        ret = (*a);

    p = *pp;
    i = *(p++);
    if (i > 7) {
        i = ASN1_R_INVALID_BIT_STRING_BITS_LEFT;
        goto err;
    }




    ret->flags &= ~(ASN1_STRING_FLAG_BITS_LEFT | 0x07);
    ret->flags |= (ASN1_STRING_FLAG_BITS_LEFT | i);

    if (len-- > 1) {
        s = OPENSSL_malloc((int)len);
        if (s == ((void*)0)) {
            i = ERR_R_MALLOC_FAILURE;
            goto err;
        }
        memcpy(s, p, (int)len);
        s[len - 1] &= (0xff << i);
        p += len;
    } else
        s = ((void*)0);

    ret->length = (int)len;
    OPENSSL_free(ret->data);
    ret->data = s;
    ret->type = V_ASN1_BIT_STRING;
    if (a != ((void*)0))
        (*a) = ret;
    *pp = p;
    return ret;
 err:
    ASN1err(ASN1_F_C2I_ASN1_BIT_STRING, i);
    if ((a == ((void*)0)) || (*a != ret))
        ASN1_BIT_STRING_free(ret);
    return ((void*)0);
}
