
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nid; char const* name; } ;


 size_t OSSL_NELEM (TYPE_1__*) ;
 TYPE_1__* nist_curves ;

const char *EC_curve_nid2nist(int nid)
{
    size_t i;
    for (i = 0; i < OSSL_NELEM(nist_curves); i++) {
        if (nist_curves[i].nid == nid)
            return nist_curves[i].name;
    }
    return ((void*)0);
}
