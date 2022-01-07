
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * octet_string; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ value; } ;
typedef TYPE_2__ ASN1_TYPE ;


 int ASN1_F_ASN1_TYPE_GET_OCTETSTRING ;
 int ASN1_R_DATA_IS_WRONG ;
 unsigned char* ASN1_STRING_get0_data (int *) ;
 int ASN1_STRING_length (int *) ;
 int ASN1err (int ,int ) ;
 scalar_t__ V_ASN1_OCTET_STRING ;
 int memcpy (unsigned char*,unsigned char const*,int) ;

int ASN1_TYPE_get_octetstring(const ASN1_TYPE *a, unsigned char *data, int max_len)
{
    int ret, num;
    const unsigned char *p;

    if ((a->type != V_ASN1_OCTET_STRING) || (a->value.octet_string == ((void*)0))) {
        ASN1err(ASN1_F_ASN1_TYPE_GET_OCTETSTRING, ASN1_R_DATA_IS_WRONG);
        return -1;
    }
    p = ASN1_STRING_get0_data(a->value.octet_string);
    ret = ASN1_STRING_length(a->value.octet_string);
    if (ret < max_len)
        num = ret;
    else
        num = max_len;
    memcpy(data, p, num);
    return ret;
}
