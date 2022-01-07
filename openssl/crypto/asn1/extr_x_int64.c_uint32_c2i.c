
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int utmp2 ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_4__ {int size; } ;
typedef int ASN1_VALUE ;
typedef TYPE_1__ ASN1_ITEM ;


 scalar_t__ ABS_INT32_MIN ;
 int ASN1_F_UINT32_C2I ;
 int ASN1_R_ILLEGAL_NEGATIVE_VALUE ;
 int ASN1_R_TOO_LARGE ;
 int ASN1_R_TOO_SMALL ;
 int ASN1err (int ,int ) ;
 scalar_t__ INT32_MAX ;
 int INTxx_FLAG_SIGNED ;
 scalar_t__ UINT32_MAX ;
 int c2i_uint64_int (scalar_t__*,int*,unsigned char const**,int) ;
 int memcpy (char*,scalar_t__*,int) ;
 int uint64_new (int **,TYPE_1__ const*) ;

__attribute__((used)) static int uint32_c2i(ASN1_VALUE **pval, const unsigned char *cont, int len,
                      int utype, char *free_cont, const ASN1_ITEM *it)
{
    uint64_t utmp = 0;
    uint32_t utmp2 = 0;
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
        ASN1err(ASN1_F_UINT32_C2I, ASN1_R_ILLEGAL_NEGATIVE_VALUE);
        return 0;
    }
    if (neg) {
        if (utmp > ABS_INT32_MIN) {
            ASN1err(ASN1_F_UINT32_C2I, ASN1_R_TOO_SMALL);
            return 0;
        }
        utmp = 0 - utmp;
    } else {
        if (((it->size & INTxx_FLAG_SIGNED) != 0 && utmp > INT32_MAX)
            || ((it->size & INTxx_FLAG_SIGNED) == 0 && utmp > UINT32_MAX)) {
            ASN1err(ASN1_F_UINT32_C2I, ASN1_R_TOO_LARGE);
            return 0;
        }
    }

 long_compat:
    utmp2 = (uint32_t)utmp;
    memcpy(cp, &utmp2, sizeof(utmp2));
    return 1;
}
