
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int X509_NAME ;
struct TYPE_11__ {int * fullname; } ;
struct TYPE_13__ {int type; TYPE_2__ name; int * dpname; } ;
struct TYPE_10__ {int * directoryName; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_1__ d; } ;
typedef int GENERAL_NAMES ;
typedef TYPE_3__ GENERAL_NAME ;
typedef TYPE_4__ DIST_POINT_NAME ;


 int GENERAL_NAME_cmp (TYPE_3__*,TYPE_3__*) ;
 scalar_t__ GEN_DIRNAME ;
 int X509_NAME_cmp (int *,int *) ;
 int sk_GENERAL_NAME_num (int *) ;
 TYPE_3__* sk_GENERAL_NAME_value (int *,int) ;

__attribute__((used)) static int idp_check_dp(DIST_POINT_NAME *a, DIST_POINT_NAME *b)
{
    X509_NAME *nm = ((void*)0);
    GENERAL_NAMES *gens = ((void*)0);
    GENERAL_NAME *gena, *genb;
    int i, j;
    if (!a || !b)
        return 1;
    if (a->type == 1) {
        if (!a->dpname)
            return 0;

        if (b->type == 1) {
            if (!b->dpname)
                return 0;
            if (!X509_NAME_cmp(a->dpname, b->dpname))
                return 1;
            else
                return 0;
        }

        nm = a->dpname;
        gens = b->name.fullname;
    } else if (b->type == 1) {
        if (!b->dpname)
            return 0;

        gens = a->name.fullname;
        nm = b->dpname;
    }


    if (nm) {
        for (i = 0; i < sk_GENERAL_NAME_num(gens); i++) {
            gena = sk_GENERAL_NAME_value(gens, i);
            if (gena->type != GEN_DIRNAME)
                continue;
            if (!X509_NAME_cmp(nm, gena->d.directoryName))
                return 1;
        }
        return 0;
    }



    for (i = 0; i < sk_GENERAL_NAME_num(a->name.fullname); i++) {
        gena = sk_GENERAL_NAME_value(a->name.fullname, i);
        for (j = 0; j < sk_GENERAL_NAME_num(b->name.fullname); j++) {
            genb = sk_GENERAL_NAME_value(b->name.fullname, j);
            if (!GENERAL_NAME_cmp(gena, genb))
                return 1;
        }
    }

    return 0;

}
