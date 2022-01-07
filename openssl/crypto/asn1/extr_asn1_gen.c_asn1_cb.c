
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int utype; char const* str; int imp_tag; int imp_class; int format; } ;
typedef TYPE_1__ tag_exp_arg ;


 int ASN1_F_ASN1_CB ;
 int ASN1_GEN_FLAG ;







 int ASN1_GEN_FORMAT_ASCII ;
 int ASN1_GEN_FORMAT_BITLIST ;
 int ASN1_GEN_FORMAT_HEX ;
 int ASN1_GEN_FORMAT_UTF8 ;
 int ASN1_R_ILLEGAL_NESTED_TAGGING ;
 int ASN1_R_MISSING_VALUE ;
 int ASN1_R_UNKNOWN_FORMAT ;
 int ASN1_R_UNKNOWN_TAG ;
 int ASN1err (int ,int ) ;
 int ERR_add_error_data (int,char*,char const*) ;
 int V_ASN1_BIT_STRING ;
 int V_ASN1_OCTET_STRING ;
 int V_ASN1_SEQUENCE ;
 int V_ASN1_SET ;
 int V_ASN1_UNIVERSAL ;
 int append_exp (TYPE_1__*,int,int,int,int,int) ;
 int asn1_str2tag (char const*,int) ;
 int parse_tagging (char const*,int,int*,int*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static int asn1_cb(const char *elem, int len, void *bitstr)
{
    tag_exp_arg *arg = bitstr;
    int i;
    int utype;
    int vlen = 0;
    const char *p, *vstart = ((void*)0);

    int tmp_tag, tmp_class;

    if (elem == ((void*)0))
        return -1;

    for (i = 0, p = elem; i < len; p++, i++) {

        if (*p == ':') {
            vstart = p + 1;
            vlen = len - (vstart - elem);
            len = p - elem;
            break;
        }
    }

    utype = asn1_str2tag(elem, len);

    if (utype == -1) {
        ASN1err(ASN1_F_ASN1_CB, ASN1_R_UNKNOWN_TAG);
        ERR_add_error_data(2, "tag=", elem);
        return -1;
    }


    if (!(utype & ASN1_GEN_FLAG)) {
        arg->utype = utype;
        arg->str = vstart;

        if (!vstart && elem[len]) {
            ASN1err(ASN1_F_ASN1_CB, ASN1_R_MISSING_VALUE);
            return -1;
        }
        return 0;
    }

    switch (utype) {

    case 131:

        if (arg->imp_tag != -1) {
            ASN1err(ASN1_F_ASN1_CB, ASN1_R_ILLEGAL_NESTED_TAGGING);
            return -1;
        }
        if (!parse_tagging(vstart, vlen, &arg->imp_tag, &arg->imp_class))
            return -1;
        break;

    case 133:

        if (!parse_tagging(vstart, vlen, &tmp_tag, &tmp_class))
            return -1;
        if (!append_exp(arg, tmp_tag, tmp_class, 1, 0, 0))
            return -1;
        break;

    case 129:
        if (!append_exp(arg, V_ASN1_SEQUENCE, V_ASN1_UNIVERSAL, 1, 0, 1))
            return -1;
        break;

    case 128:
        if (!append_exp(arg, V_ASN1_SET, V_ASN1_UNIVERSAL, 1, 0, 1))
            return -1;
        break;

    case 134:
        if (!append_exp(arg, V_ASN1_BIT_STRING, V_ASN1_UNIVERSAL, 0, 1, 1))
            return -1;
        break;

    case 130:
        if (!append_exp(arg, V_ASN1_OCTET_STRING, V_ASN1_UNIVERSAL, 0, 0, 1))
            return -1;
        break;

    case 132:
        if (!vstart) {
            ASN1err(ASN1_F_ASN1_CB, ASN1_R_UNKNOWN_FORMAT);
            return -1;
        }
        if (strncmp(vstart, "ASCII", 5) == 0)
            arg->format = ASN1_GEN_FORMAT_ASCII;
        else if (strncmp(vstart, "UTF8", 4) == 0)
            arg->format = ASN1_GEN_FORMAT_UTF8;
        else if (strncmp(vstart, "HEX", 3) == 0)
            arg->format = ASN1_GEN_FORMAT_HEX;
        else if (strncmp(vstart, "BITLIST", 7) == 0)
            arg->format = ASN1_GEN_FORMAT_BITLIST;
        else {
            ASN1err(ASN1_F_ASN1_CB, ASN1_R_UNKNOWN_FORMAT);
            return -1;
        }
        break;

    }

    return 1;

}
