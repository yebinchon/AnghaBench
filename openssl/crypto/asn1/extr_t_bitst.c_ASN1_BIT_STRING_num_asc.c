
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bitnum; scalar_t__ lname; scalar_t__ sname; } ;
typedef TYPE_1__ BIT_STRING_BITNAME ;


 scalar_t__ strcmp (scalar_t__,char const*) ;

int ASN1_BIT_STRING_num_asc(const char *name, BIT_STRING_BITNAME *tbl)
{
    BIT_STRING_BITNAME *bnam;
    for (bnam = tbl; bnam->lname; bnam++) {
        if ((strcmp(bnam->sname, name) == 0)
            || (strcmp(bnam->lname, name) == 0))
            return bnam->bitnum;
    }
    return -1;
}
