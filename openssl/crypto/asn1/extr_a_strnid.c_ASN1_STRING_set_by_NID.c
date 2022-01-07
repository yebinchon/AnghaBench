
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long mask; int flags; int maxsize; int minsize; } ;
typedef TYPE_1__ ASN1_STRING_TABLE ;
typedef int ASN1_STRING ;


 TYPE_1__* ASN1_STRING_TABLE_get (int) ;
 int ASN1_mbstring_copy (int **,unsigned char const*,int,int,unsigned long) ;
 int ASN1_mbstring_ncopy (int **,unsigned char const*,int,int,unsigned long,int ,int ) ;
 unsigned long DIRSTRING_TYPE ;
 int STABLE_NO_MASK ;
 unsigned long global_mask ;

ASN1_STRING *ASN1_STRING_set_by_NID(ASN1_STRING **out,
                                    const unsigned char *in, int inlen,
                                    int inform, int nid)
{
    ASN1_STRING_TABLE *tbl;
    ASN1_STRING *str = ((void*)0);
    unsigned long mask;
    int ret;

    if (out == ((void*)0))
        out = &str;
    tbl = ASN1_STRING_TABLE_get(nid);
    if (tbl != ((void*)0)) {
        mask = tbl->mask;
        if (!(tbl->flags & STABLE_NO_MASK))
            mask &= global_mask;
        ret = ASN1_mbstring_ncopy(out, in, inlen, inform, mask,
                                  tbl->minsize, tbl->maxsize);
    } else {
        ret = ASN1_mbstring_copy(out, in, inlen, inform,
                                 DIRSTRING_TYPE & global_mask);
    }
    if (ret <= 0)
        return ((void*)0);
    return *out;
}
