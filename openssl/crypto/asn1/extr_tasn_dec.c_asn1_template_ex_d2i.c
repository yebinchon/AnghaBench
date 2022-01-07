
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int tag; } ;
typedef int ASN1_VALUE ;
typedef int ASN1_TLC ;
typedef TYPE_1__ ASN1_TEMPLATE ;


 int ASN1_F_ASN1_TEMPLATE_EX_D2I ;
 int ASN1_R_EXPLICIT_LENGTH_MISMATCH ;
 int ASN1_R_EXPLICIT_TAG_NOT_CONSTRUCTED ;
 int ASN1_R_MISSING_EOC ;
 int ASN1_TFLG_EXPTAG ;
 int ASN1_TFLG_TAG_CLASS ;
 int ASN1err (int ,int ) ;
 int ERR_R_NESTED_ASN1_ERROR ;
 int asn1_check_eoc (unsigned char const**,long) ;
 int asn1_check_tlen (long*,int *,int *,char*,char*,unsigned char const**,long,int ,int,char,int *) ;
 int asn1_template_noexp_d2i (int **,unsigned char const**,long,TYPE_1__ const*,char,int *,int) ;

__attribute__((used)) static int asn1_template_ex_d2i(ASN1_VALUE **val,
                                const unsigned char **in, long inlen,
                                const ASN1_TEMPLATE *tt, char opt,
                                ASN1_TLC *ctx, int depth)
{
    int flags, aclass;
    int ret;
    long len;
    const unsigned char *p, *q;
    char exp_eoc;
    if (!val)
        return 0;
    flags = tt->flags;
    aclass = flags & ASN1_TFLG_TAG_CLASS;

    p = *in;


    if (flags & ASN1_TFLG_EXPTAG) {
        char cst;




        ret = asn1_check_tlen(&len, ((void*)0), ((void*)0), &exp_eoc, &cst,
                              &p, inlen, tt->tag, aclass, opt, ctx);
        q = p;
        if (!ret) {
            ASN1err(ASN1_F_ASN1_TEMPLATE_EX_D2I, ERR_R_NESTED_ASN1_ERROR);
            return 0;
        } else if (ret == -1)
            return -1;
        if (!cst) {
            ASN1err(ASN1_F_ASN1_TEMPLATE_EX_D2I,
                    ASN1_R_EXPLICIT_TAG_NOT_CONSTRUCTED);
            return 0;
        }

        ret = asn1_template_noexp_d2i(val, &p, len, tt, 0, ctx, depth);
        if (!ret) {
            ASN1err(ASN1_F_ASN1_TEMPLATE_EX_D2I, ERR_R_NESTED_ASN1_ERROR);
            return 0;
        }

        len -= p - q;
        if (exp_eoc) {

            if (!asn1_check_eoc(&p, len)) {
                ASN1err(ASN1_F_ASN1_TEMPLATE_EX_D2I, ASN1_R_MISSING_EOC);
                goto err;
            }
        } else {



            if (len) {
                ASN1err(ASN1_F_ASN1_TEMPLATE_EX_D2I,
                        ASN1_R_EXPLICIT_LENGTH_MISMATCH);
                goto err;
            }
        }
    } else
        return asn1_template_noexp_d2i(val, in, inlen, tt, opt, ctx, depth);

    *in = p;
    return 1;

 err:
    return 0;
}
