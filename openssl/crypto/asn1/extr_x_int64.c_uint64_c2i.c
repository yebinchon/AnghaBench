
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int utmp ;
typedef scalar_t__ uint64_t ;
struct TYPE_4__ {int size; } ;
typedef int ASN1_VALUE ;
typedef TYPE_1__ ASN1_ITEM ;


 int ASN1_F_UINT64_C2I ;
 int ASN1_R_ILLEGAL_NEGATIVE_VALUE ;
 int ASN1_R_TOO_LARGE ;
 int ASN1err (int ,int ) ;
 scalar_t__ INT64_MAX ;
 int INTxx_FLAG_SIGNED ;
 int c2i_uint64_int (scalar_t__*,int*,unsigned char const**,int) ;
 int memcpy (char*,scalar_t__*,int) ;
 int uint64_new (int **,TYPE_1__ const*) ;

__attribute__((used)) static int uint64_c2i(ASN1_VALUE **pval, const unsigned char *cont, int len,
                      int utype, char *free_cont, const ASN1_ITEM *it)
{
    uint64_t utmp = 0;
    char *cp;
    int neg = 0;

    if (*pval == ((void*)0) && !uint64_new(pval, it))
        return 0;

    cp = (char *)*pval;







    if (len == 0)
        goto long_compat;

    if (!c2i_uint64_int(&utmp, &neg, &cont, len))
        return 0;
    if ((it->size & INTxx_FLAG_SIGNED) == 0 && neg) {
        ASN1err(ASN1_F_UINT64_C2I, ASN1_R_ILLEGAL_NEGATIVE_VALUE);
        return 0;
    }
    if ((it->size & INTxx_FLAG_SIGNED) == INTxx_FLAG_SIGNED
            && !neg && utmp > INT64_MAX) {
        ASN1err(ASN1_F_UINT64_C2I, ASN1_R_TOO_LARGE);
        return 0;
    }
    if (neg)

        utmp = 0 - utmp;

 long_compat:
    memcpy(cp, &utmp, sizeof(utmp));
    return 1;
}
