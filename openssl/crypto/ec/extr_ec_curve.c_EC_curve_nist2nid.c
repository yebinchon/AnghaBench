
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nid; int name; } ;


 int NID_undef ;
 size_t OSSL_NELEM (TYPE_1__*) ;
 TYPE_1__* nist_curves ;
 scalar_t__ strcmp (int ,char const*) ;

int EC_curve_nist2nid(const char *name)
{
    size_t i;
    for (i = 0; i < OSSL_NELEM(nist_curves); i++) {
        if (strcmp(nist_curves[i].name, name) == 0)
            return nist_curves[i].nid;
    }
    return NID_undef;
}
