
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dirty_cnt; } ;
typedef TYPE_1__ DH ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int ASN1_OP_D2I_POST ;
 int ASN1_OP_FREE_PRE ;
 int ASN1_OP_NEW_PRE ;
 int DH_free (TYPE_1__*) ;
 scalar_t__ DH_new () ;

__attribute__((used)) static int dh_cb(int operation, ASN1_VALUE **pval, const ASN1_ITEM *it,
                 void *exarg)
{
    if (operation == ASN1_OP_NEW_PRE) {
        *pval = (ASN1_VALUE *)DH_new();
        if (*pval != ((void*)0))
            return 2;
        return 0;
    } else if (operation == ASN1_OP_FREE_PRE) {
        DH_free((DH *)*pval);
        *pval = ((void*)0);
        return 2;
    } else if (operation == ASN1_OP_D2I_POST) {
        ((DH *)*pval)->dirty_cnt++;
    }
    return 1;
}
