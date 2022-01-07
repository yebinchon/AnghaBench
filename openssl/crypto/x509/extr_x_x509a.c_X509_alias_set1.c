
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * alias; } ;
typedef TYPE_2__ X509_CERT_AUX ;
struct TYPE_9__ {TYPE_1__* aux; } ;
typedef TYPE_3__ X509 ;
struct TYPE_7__ {int * alias; } ;


 int ASN1_STRING_set (int *,unsigned char const*,int) ;
 int ASN1_UTF8STRING_free (int *) ;
 int * ASN1_UTF8STRING_new () ;
 TYPE_2__* aux_get (TYPE_3__*) ;

int X509_alias_set1(X509 *x, const unsigned char *name, int len)
{
    X509_CERT_AUX *aux;
    if (!name) {
        if (!x || !x->aux || !x->aux->alias)
            return 1;
        ASN1_UTF8STRING_free(x->aux->alias);
        x->aux->alias = ((void*)0);
        return 1;
    }
    if ((aux = aux_get(x)) == ((void*)0))
        return 0;
    if (aux->alias == ((void*)0) && (aux->alias = ASN1_UTF8STRING_new()) == ((void*)0))
        return 0;
    return ASN1_STRING_set(aux->alias, name, len);
}
