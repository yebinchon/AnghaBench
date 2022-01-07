
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int type; unsigned char* data; long length; int flags; } ;
struct TYPE_11__ {TYPE_6__* asn1_string; int bit_string; int * object; int * integer; int boolean; } ;
struct TYPE_13__ {int type; TYPE_1__ value; } ;
struct TYPE_12__ {char* value; int * section; int * name; } ;
typedef TYPE_2__ CONF_VALUE ;
typedef TYPE_3__ ASN1_TYPE ;


 int ASN1_F_ASN1_STR2TYPE ;
 int ASN1_GEN_FORMAT_ASCII ;
 int ASN1_GEN_FORMAT_BITLIST ;
 int ASN1_GEN_FORMAT_HEX ;
 int ASN1_GEN_FORMAT_UTF8 ;
 int ASN1_R_ILLEGAL_BITSTRING_FORMAT ;
 int ASN1_R_ILLEGAL_BOOLEAN ;
 int ASN1_R_ILLEGAL_FORMAT ;
 int ASN1_R_ILLEGAL_HEX ;
 int ASN1_R_ILLEGAL_INTEGER ;
 int ASN1_R_ILLEGAL_NULL_VALUE ;
 int ASN1_R_ILLEGAL_OBJECT ;
 int ASN1_R_ILLEGAL_TIME_VALUE ;
 int ASN1_R_INTEGER_NOT_ASCII_FORMAT ;
 int ASN1_R_LIST_ERROR ;
 int ASN1_R_NOT_ASCII_FORMAT ;
 int ASN1_R_OBJECT_NOT_ASCII_FORMAT ;
 int ASN1_R_TIME_NOT_ASCII_FORMAT ;
 int ASN1_R_UNSUPPORTED_TYPE ;
 int ASN1_STRING_FLAG_BITS_LEFT ;
 void* ASN1_STRING_new () ;
 int ASN1_STRING_set (TYPE_6__*,char const*,int) ;
 int ASN1_TIME_check (TYPE_6__*) ;
 int ASN1_TYPE_free (TYPE_3__*) ;
 TYPE_3__* ASN1_TYPE_new () ;
 int ASN1_mbstring_copy (TYPE_6__**,unsigned char*,int,int,int ) ;
 int ASN1_tag2bit (int) ;
 int ASN1err (int ,int ) ;
 int CONF_parse_list (char const*,char,int,int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_add_error_data (int,char*,char const*) ;
 int MBSTRING_ASC ;
 int MBSTRING_UTF8 ;
 int * OBJ_txt2obj (char const*,int ) ;
 unsigned char* OPENSSL_hexstr2buf (char const*,long*) ;
 int X509V3_get_value_bool (TYPE_2__*,int *) ;
 int bitstr_cb ;
 int * s2i_ASN1_INTEGER (int *,char const*) ;

__attribute__((used)) static ASN1_TYPE *asn1_str2type(const char *str, int format, int utype)
{
    ASN1_TYPE *atmp = ((void*)0);
    CONF_VALUE vtmp;
    unsigned char *rdata;
    long rdlen;
    int no_unused = 1;

    if ((atmp = ASN1_TYPE_new()) == ((void*)0)) {
        ASN1err(ASN1_F_ASN1_STR2TYPE, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    if (!str)
        str = "";

    switch (utype) {

    case 137:
        if (str && *str) {
            ASN1err(ASN1_F_ASN1_STR2TYPE, ASN1_R_ILLEGAL_NULL_VALUE);
            goto bad_form;
        }
        break;

    case 143:
        if (format != ASN1_GEN_FORMAT_ASCII) {
            ASN1err(ASN1_F_ASN1_STR2TYPE, ASN1_R_NOT_ASCII_FORMAT);
            goto bad_form;
        }
        vtmp.name = ((void*)0);
        vtmp.section = ((void*)0);
        vtmp.value = (char *)str;
        if (!X509V3_get_value_bool(&vtmp, &atmp->value.boolean)) {
            ASN1err(ASN1_F_ASN1_STR2TYPE, ASN1_R_ILLEGAL_BOOLEAN);
            goto bad_str;
        }
        break;

    case 138:
    case 142:
        if (format != ASN1_GEN_FORMAT_ASCII) {
            ASN1err(ASN1_F_ASN1_STR2TYPE, ASN1_R_INTEGER_NOT_ASCII_FORMAT);
            goto bad_form;
        }
        if ((atmp->value.integer
                    = s2i_ASN1_INTEGER(((void*)0), str)) == ((void*)0)) {
            ASN1err(ASN1_F_ASN1_STR2TYPE, ASN1_R_ILLEGAL_INTEGER);
            goto bad_str;
        }
        break;

    case 135:
        if (format != ASN1_GEN_FORMAT_ASCII) {
            ASN1err(ASN1_F_ASN1_STR2TYPE, ASN1_R_OBJECT_NOT_ASCII_FORMAT);
            goto bad_form;
        }
        if ((atmp->value.object = OBJ_txt2obj(str, 0)) == ((void*)0)) {
            ASN1err(ASN1_F_ASN1_STR2TYPE, ASN1_R_ILLEGAL_OBJECT);
            goto bad_str;
        }
        break;

    case 130:
    case 141:
        if (format != ASN1_GEN_FORMAT_ASCII) {
            ASN1err(ASN1_F_ASN1_STR2TYPE, ASN1_R_TIME_NOT_ASCII_FORMAT);
            goto bad_form;
        }
        if ((atmp->value.asn1_string = ASN1_STRING_new()) == ((void*)0)) {
            ASN1err(ASN1_F_ASN1_STR2TYPE, ERR_R_MALLOC_FAILURE);
            goto bad_str;
        }
        if (!ASN1_STRING_set(atmp->value.asn1_string, str, -1)) {
            ASN1err(ASN1_F_ASN1_STR2TYPE, ERR_R_MALLOC_FAILURE);
            goto bad_str;
        }
        atmp->value.asn1_string->type = utype;
        if (!ASN1_TIME_check(atmp->value.asn1_string)) {
            ASN1err(ASN1_F_ASN1_STR2TYPE, ASN1_R_ILLEGAL_TIME_VALUE);
            goto bad_str;
        }

        break;

    case 144:
    case 133:
    case 139:
    case 132:
    case 129:
    case 128:
    case 131:
    case 140:
    case 136:
        if (format == ASN1_GEN_FORMAT_ASCII)
            format = MBSTRING_ASC;
        else if (format == ASN1_GEN_FORMAT_UTF8)
            format = MBSTRING_UTF8;
        else {
            ASN1err(ASN1_F_ASN1_STR2TYPE, ASN1_R_ILLEGAL_FORMAT);
            goto bad_form;
        }

        if (ASN1_mbstring_copy(&atmp->value.asn1_string, (unsigned char *)str,
                               -1, format, ASN1_tag2bit(utype)) <= 0) {
            ASN1err(ASN1_F_ASN1_STR2TYPE, ERR_R_MALLOC_FAILURE);
            goto bad_str;
        }

        break;

    case 145:
    case 134:
        if ((atmp->value.asn1_string = ASN1_STRING_new()) == ((void*)0)) {
            ASN1err(ASN1_F_ASN1_STR2TYPE, ERR_R_MALLOC_FAILURE);
            goto bad_form;
        }

        if (format == ASN1_GEN_FORMAT_HEX) {
            if ((rdata = OPENSSL_hexstr2buf(str, &rdlen)) == ((void*)0)) {
                ASN1err(ASN1_F_ASN1_STR2TYPE, ASN1_R_ILLEGAL_HEX);
                goto bad_str;
            }
            atmp->value.asn1_string->data = rdata;
            atmp->value.asn1_string->length = rdlen;
            atmp->value.asn1_string->type = utype;
        } else if (format == ASN1_GEN_FORMAT_ASCII)
            ASN1_STRING_set(atmp->value.asn1_string, str, -1);
        else if ((format == ASN1_GEN_FORMAT_BITLIST)
                 && (utype == 145)) {
            if (!CONF_parse_list
                (str, ',', 1, bitstr_cb, atmp->value.bit_string)) {
                ASN1err(ASN1_F_ASN1_STR2TYPE, ASN1_R_LIST_ERROR);
                goto bad_str;
            }
            no_unused = 0;

        } else {
            ASN1err(ASN1_F_ASN1_STR2TYPE, ASN1_R_ILLEGAL_BITSTRING_FORMAT);
            goto bad_form;
        }

        if ((utype == 145) && no_unused) {
            atmp->value.asn1_string->flags
                &= ~(ASN1_STRING_FLAG_BITS_LEFT | 0x07);
            atmp->value.asn1_string->flags |= ASN1_STRING_FLAG_BITS_LEFT;
        }

        break;

    default:
        ASN1err(ASN1_F_ASN1_STR2TYPE, ASN1_R_UNSUPPORTED_TYPE);
        goto bad_str;
    }

    atmp->type = utype;
    return atmp;

 bad_str:
    ERR_add_error_data(2, "string=", str);
 bad_form:

    ASN1_TYPE_free(atmp);
    return ((void*)0);

}
