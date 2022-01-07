
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int utype; } ;
typedef int ASN1_VALUE ;
typedef TYPE_1__ ASN1_ITEM ;


 int ASN1_object_size (int,int,int) ;
 int ASN1_put_eoc (unsigned char**) ;
 int ASN1_put_object (unsigned char**,int,int,int,int) ;
 int V_ASN1_OTHER ;
 int V_ASN1_SEQUENCE ;
 int V_ASN1_SET ;
 int asn1_ex_i2c (int const**,unsigned char*,int*,TYPE_1__ const*) ;

__attribute__((used)) static int asn1_i2d_ex_primitive(const ASN1_VALUE **pval, unsigned char **out,
                                 const ASN1_ITEM *it, int tag, int aclass)
{
    int len;
    int utype;
    int usetag;
    int ndef = 0;

    utype = it->utype;





    len = asn1_ex_i2c(pval, ((void*)0), &utype, it);






    if ((utype == V_ASN1_SEQUENCE) || (utype == V_ASN1_SET) ||
        (utype == V_ASN1_OTHER))
        usetag = 0;
    else
        usetag = 1;



    if (len == -1)
        return 0;


    if (len == -2) {
        ndef = 2;
        len = 0;
    }


    if (tag == -1)
        tag = utype;


    if (out) {
        if (usetag)
            ASN1_put_object(out, ndef, len, tag, aclass);
        asn1_ex_i2c(pval, *out, &utype, it);
        if (ndef)
            ASN1_put_eoc(out);
        else
            *out += len;
    }

    if (usetag)
        return ASN1_object_size(ndef, len, tag);
    return len;
}
