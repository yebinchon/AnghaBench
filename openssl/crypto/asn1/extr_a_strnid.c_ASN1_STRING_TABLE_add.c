
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long minsize; long maxsize; unsigned long mask; unsigned long flags; } ;
typedef TYPE_1__ ASN1_STRING_TABLE ;


 int ASN1_F_ASN1_STRING_TABLE_ADD ;
 int ASN1err (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 unsigned long STABLE_FLAGS_MALLOC ;
 TYPE_1__* stable_get (int) ;

int ASN1_STRING_TABLE_add(int nid,
                          long minsize, long maxsize, unsigned long mask,
                          unsigned long flags)
{
    ASN1_STRING_TABLE *tmp;

    tmp = stable_get(nid);
    if (tmp == ((void*)0)) {
        ASN1err(ASN1_F_ASN1_STRING_TABLE_ADD, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    if (minsize >= 0)
        tmp->minsize = minsize;
    if (maxsize >= 0)
        tmp->maxsize = maxsize;
    if (mask)
        tmp->mask = mask;
    if (flags)
        tmp->flags = STABLE_FLAGS_MALLOC | flags;
    return 1;
}
