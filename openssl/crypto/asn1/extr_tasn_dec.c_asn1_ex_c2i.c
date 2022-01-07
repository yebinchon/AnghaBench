
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_21__ {int type; } ;
struct TYPE_20__ {scalar_t__ utype; TYPE_4__* funcs; } ;
struct TYPE_19__ {int (* prim_c2i ) (int **,unsigned char const*,int,int,char*,TYPE_5__ const*) ;} ;
struct TYPE_18__ {int type; unsigned char* data; int length; } ;
struct TYPE_16__ {int * ptr; int * asn1_value; } ;
struct TYPE_17__ {int type; TYPE_1__ value; } ;
typedef int ASN1_VALUE ;
typedef TYPE_2__ ASN1_TYPE ;
typedef TYPE_3__ ASN1_STRING ;
typedef TYPE_4__ ASN1_PRIMITIVE_FUNCS ;
typedef int ASN1_OBJECT ;
typedef TYPE_5__ ASN1_ITEM ;
typedef TYPE_6__ ASN1_INTEGER ;
typedef unsigned char ASN1_BOOLEAN ;
typedef int ASN1_BIT_STRING ;


 int ASN1_F_ASN1_EX_C2I ;
 int ASN1_R_BMPSTRING_IS_WRONG_LENGTH ;
 int ASN1_R_BOOLEAN_IS_WRONG_LENGTH ;
 int ASN1_R_NULL_IS_WRONG_LENGTH ;
 int ASN1_R_UNIVERSALSTRING_IS_WRONG_LENGTH ;
 int ASN1_STRING_free (TYPE_3__*) ;
 int ASN1_STRING_set (TYPE_3__*,unsigned char const*,int) ;
 TYPE_3__* ASN1_STRING_type_new (int) ;
 int ASN1_TYPE_free (TYPE_2__*) ;
 TYPE_2__* ASN1_TYPE_new () ;
 int ASN1_TYPE_set (TYPE_2__*,int,int *) ;
 int ASN1err (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (unsigned char*) ;
 scalar_t__ V_ASN1_ANY ;
 int V_ASN1_NEG ;
 int c2i_ASN1_BIT_STRING (int **,unsigned char const**,int) ;
 int c2i_ASN1_INTEGER (TYPE_6__**,unsigned char const**,int) ;
 int c2i_ASN1_OBJECT (int **,unsigned char const**,int) ;
 int stub1 (int **,unsigned char const*,int,int,char*,TYPE_5__ const*) ;

__attribute__((used)) static int asn1_ex_c2i(ASN1_VALUE **pval, const unsigned char *cont, int len,
                       int utype, char *free_cont, const ASN1_ITEM *it)
{
    ASN1_VALUE **opval = ((void*)0);
    ASN1_STRING *stmp;
    ASN1_TYPE *typ = ((void*)0);
    int ret = 0;
    const ASN1_PRIMITIVE_FUNCS *pf;
    ASN1_INTEGER **tint;
    pf = it->funcs;

    if (pf && pf->prim_c2i)
        return pf->prim_c2i(pval, cont, len, utype, free_cont, it);

    if (it->utype == V_ASN1_ANY) {
        if (*pval == ((void*)0)) {
            typ = ASN1_TYPE_new();
            if (typ == ((void*)0))
                goto err;
            *pval = (ASN1_VALUE *)typ;
        } else
            typ = (ASN1_TYPE *)*pval;

        if (utype != typ->type)
            ASN1_TYPE_set(typ, utype, ((void*)0));
        opval = pval;
        pval = &typ->value.asn1_value;
    }
    switch (utype) {
    case 139:
        if (!c2i_ASN1_OBJECT((ASN1_OBJECT **)pval, &cont, len))
            goto err;
        break;

    case 141:
        if (len) {
            ASN1err(ASN1_F_ASN1_EX_C2I, ASN1_R_NULL_IS_WRONG_LENGTH);
            goto err;
        }
        *pval = (ASN1_VALUE *)1;
        break;

    case 148:
        if (len != 1) {
            ASN1err(ASN1_F_ASN1_EX_C2I, ASN1_R_BOOLEAN_IS_WRONG_LENGTH);
            goto err;
        } else {
            ASN1_BOOLEAN *tbool;
            tbool = (ASN1_BOOLEAN *)pval;
            *tbool = *cont;
        }
        break;

    case 150:
        if (!c2i_ASN1_BIT_STRING((ASN1_BIT_STRING **)pval, &cont, len))
            goto err;
        break;

    case 142:
    case 147:
        tint = (ASN1_INTEGER **)pval;
        if (!c2i_ASN1_INTEGER(tint, &cont, len))
            goto err;

        (*tint)->type = utype | ((*tint)->type & V_ASN1_NEG);
        break;

    case 138:
    case 140:
    case 136:
    case 133:
    case 129:
    case 143:
    case 131:
    case 146:
    case 144:
    case 128:
    case 145:
    case 132:
    case 149:
    case 130:
    case 137:
    case 134:
    case 135:
    default:
        if (utype == 149 && (len & 1)) {
            ASN1err(ASN1_F_ASN1_EX_C2I, ASN1_R_BMPSTRING_IS_WRONG_LENGTH);
            goto err;
        }
        if (utype == 132 && (len & 3)) {
            ASN1err(ASN1_F_ASN1_EX_C2I,
                    ASN1_R_UNIVERSALSTRING_IS_WRONG_LENGTH);
            goto err;
        }

        if (*pval == ((void*)0)) {
            stmp = ASN1_STRING_type_new(utype);
            if (stmp == ((void*)0)) {
                ASN1err(ASN1_F_ASN1_EX_C2I, ERR_R_MALLOC_FAILURE);
                goto err;
            }
            *pval = (ASN1_VALUE *)stmp;
        } else {
            stmp = (ASN1_STRING *)*pval;
            stmp->type = utype;
        }

        if (*free_cont) {
            OPENSSL_free(stmp->data);
            stmp->data = (unsigned char *)cont;
            stmp->length = len;
            *free_cont = 0;
        } else {
            if (!ASN1_STRING_set(stmp, cont, len)) {
                ASN1err(ASN1_F_ASN1_EX_C2I, ERR_R_MALLOC_FAILURE);
                ASN1_STRING_free(stmp);
                *pval = ((void*)0);
                goto err;
            }
        }
        break;
    }

    if (typ && (utype == 141))
        typ->value.ptr = ((void*)0);

    ret = 1;
 err:
    if (!ret) {
        ASN1_TYPE_free(typ);
        if (opval)
            *opval = ((void*)0);
    }
    return ret;
}
