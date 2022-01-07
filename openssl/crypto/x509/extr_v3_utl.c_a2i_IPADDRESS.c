
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_OCTET_STRING ;


 int ASN1_OCTET_STRING_free (int *) ;
 int * ASN1_OCTET_STRING_new () ;
 int ASN1_OCTET_STRING_set (int *,unsigned char*,int) ;
 int a2i_ipadd (unsigned char*,char const*) ;

ASN1_OCTET_STRING *a2i_IPADDRESS(const char *ipasc)
{
    unsigned char ipout[16];
    ASN1_OCTET_STRING *ret;
    int iplen;



    iplen = a2i_ipadd(ipout, ipasc);

    if (!iplen)
        return ((void*)0);

    ret = ASN1_OCTET_STRING_new();
    if (ret == ((void*)0))
        return ((void*)0);
    if (!ASN1_OCTET_STRING_set(ret, ipout, iplen)) {
        ASN1_OCTET_STRING_free(ret);
        return ((void*)0);
    }
    return ret;
}
