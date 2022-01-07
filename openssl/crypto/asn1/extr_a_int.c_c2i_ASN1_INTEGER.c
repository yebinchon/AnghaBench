
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int type; int * data; } ;
typedef TYPE_1__ ASN1_INTEGER ;


 int ASN1_F_C2I_ASN1_INTEGER ;
 int ASN1_INTEGER_free (TYPE_1__*) ;
 TYPE_1__* ASN1_INTEGER_new () ;
 scalar_t__ ASN1_STRING_set (TYPE_1__*,int *,size_t) ;
 int ASN1err (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int V_ASN1_INTEGER ;
 int V_ASN1_NEG ;
 size_t c2i_ibuf (int *,int*,unsigned char const*,long) ;

ASN1_INTEGER *c2i_ASN1_INTEGER(ASN1_INTEGER **a, const unsigned char **pp,
                               long len)
{
    ASN1_INTEGER *ret = ((void*)0);
    size_t r;
    int neg;

    r = c2i_ibuf(((void*)0), ((void*)0), *pp, len);

    if (r == 0)
        return ((void*)0);

    if ((a == ((void*)0)) || ((*a) == ((void*)0))) {
        ret = ASN1_INTEGER_new();
        if (ret == ((void*)0))
            return ((void*)0);
        ret->type = V_ASN1_INTEGER;
    } else
        ret = *a;

    if (ASN1_STRING_set(ret, ((void*)0), r) == 0)
        goto err;

    c2i_ibuf(ret->data, &neg, *pp, len);

    if (neg)
        ret->type |= V_ASN1_NEG;

    *pp += len;
    if (a != ((void*)0))
        (*a) = ret;
    return ret;
 err:
    ASN1err(ASN1_F_C2I_ASN1_INTEGER, ERR_R_MALLOC_FAILURE);
    if ((a == ((void*)0)) || (*a != ret))
        ASN1_INTEGER_free(ret);
    return ((void*)0);
}
