
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long B_ASN1_BMPSTRING ;
 unsigned long B_ASN1_IA5STRING ;
 unsigned long B_ASN1_NUMERICSTRING ;
 unsigned long B_ASN1_PRINTABLESTRING ;
 unsigned long B_ASN1_T61STRING ;
 unsigned long INT_MAX ;
 unsigned long ossl_fromascii (unsigned long) ;
 int ossl_isascii (int const) ;
 int ossl_isasn1print (int const) ;
 scalar_t__ ossl_isdigit (int const) ;

__attribute__((used)) static int type_str(unsigned long value, void *arg)
{
    unsigned long types = *((unsigned long *)arg);
    const int native = value > INT_MAX ? INT_MAX : ossl_fromascii(value);

    if ((types & B_ASN1_NUMERICSTRING) && !(ossl_isdigit(native)
                                            || native == ' '))
        types &= ~B_ASN1_NUMERICSTRING;
    if ((types & B_ASN1_PRINTABLESTRING) && !ossl_isasn1print(native))
        types &= ~B_ASN1_PRINTABLESTRING;
    if ((types & B_ASN1_IA5STRING) && !ossl_isascii(native))
        types &= ~B_ASN1_IA5STRING;
    if ((types & B_ASN1_T61STRING) && (value > 0xff))
        types &= ~B_ASN1_T61STRING;
    if ((types & B_ASN1_BMPSTRING) && (value > 0xffff))
        types &= ~B_ASN1_BMPSTRING;
    if (!types)
        return -1;
    *((unsigned long *)arg) = types;
    return 1;
}
