
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ itype; int utype; int size; TYPE_3__* funcs; } ;
struct TYPE_10__ {int (* prim_free ) (int **,TYPE_4__ const*) ;int (* prim_clear ) (int **,TYPE_4__ const*) ;} ;
struct TYPE_8__ {int * asn1_value; } ;
struct TYPE_9__ {int type; TYPE_1__ value; } ;
typedef int ASN1_VALUE ;
typedef TYPE_2__ ASN1_TYPE ;
typedef int ASN1_STRING ;
typedef TYPE_3__ ASN1_PRIMITIVE_FUNCS ;
typedef int ASN1_OBJECT ;
typedef TYPE_4__ ASN1_ITEM ;
typedef int ASN1_BOOLEAN ;


 scalar_t__ ASN1_ITYPE_MSTRING ;
 int ASN1_OBJECT_free (int *) ;
 int OPENSSL_free (int *) ;




 int asn1_string_embed_free (int *,int) ;
 int stub1 (int **,TYPE_4__ const*) ;
 int stub2 (int **,TYPE_4__ const*) ;

void asn1_primitive_free(ASN1_VALUE **pval, const ASN1_ITEM *it, int embed)
{
    int utype;


    if (it) {
        const ASN1_PRIMITIVE_FUNCS *pf = it->funcs;

        if (embed) {
            if (pf && pf->prim_clear) {
                pf->prim_clear(pval, it);
                return;
            }
        } else if (pf && pf->prim_free) {
            pf->prim_free(pval, it);
            return;
        }
    }


    if (!it) {
        ASN1_TYPE *typ = (ASN1_TYPE *)*pval;

        utype = typ->type;
        pval = &typ->value.asn1_value;
        if (*pval == ((void*)0))
            return;
    } else if (it->itype == ASN1_ITYPE_MSTRING) {
        utype = -1;
        if (*pval == ((void*)0))
            return;
    } else {
        utype = it->utype;
        if ((utype != 130) && *pval == ((void*)0))
            return;
    }

    switch (utype) {
    case 128:
        ASN1_OBJECT_free((ASN1_OBJECT *)*pval);
        break;

    case 130:
        if (it)
            *(ASN1_BOOLEAN *)pval = it->size;
        else
            *(ASN1_BOOLEAN *)pval = -1;
        return;

    case 129:
        break;

    case 131:
        asn1_primitive_free(pval, ((void*)0), 0);
        OPENSSL_free(*pval);
        break;

    default:
        asn1_string_embed_free((ASN1_STRING *)*pval, embed);
        break;
    }
    *pval = ((void*)0);
}
