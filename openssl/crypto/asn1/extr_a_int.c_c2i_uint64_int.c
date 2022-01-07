
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int ASN1_F_C2I_UINT64_INT ;
 int ASN1_R_TOO_LARGE ;
 int ASN1err (int ,int ) ;
 int asn1_get_uint64 (int *,unsigned char*,size_t) ;
 size_t c2i_ibuf (unsigned char*,int*,unsigned char const*,long) ;

int c2i_uint64_int(uint64_t *ret, int *neg, const unsigned char **pp, long len)
{
    unsigned char buf[sizeof(uint64_t)];
    size_t buflen;

    buflen = c2i_ibuf(((void*)0), ((void*)0), *pp, len);
    if (buflen == 0)
        return 0;
    if (buflen > sizeof(uint64_t)) {
        ASN1err(ASN1_F_C2I_UINT64_INT, ASN1_R_TOO_LARGE);
        return 0;
    }
    (void)c2i_ibuf(buf, neg, *pp, len);
    return asn1_get_uint64(ret, buf, buflen);
}
