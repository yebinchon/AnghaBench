
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASN1_BIT_STRING_set_bit (void*,long,int) ;
 int ASN1_F_BITSTR_CB ;
 int ASN1_R_INVALID_NUMBER ;
 int ASN1err (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 long strtoul (char const*,char**,int) ;

__attribute__((used)) static int bitstr_cb(const char *elem, int len, void *bitstr)
{
    long bitnum;
    char *eptr;
    if (!elem)
        return 0;
    bitnum = strtoul(elem, &eptr, 10);
    if (eptr && *eptr && (eptr != elem + len))
        return 0;
    if (bitnum < 0) {
        ASN1err(ASN1_F_BITSTR_CB, ASN1_R_INVALID_NUMBER);
        return 0;
    }
    if (!ASN1_BIT_STRING_set_bit(bitstr, bitnum, 1)) {
        ASN1err(ASN1_F_BITSTR_CB, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    return 1;
}
