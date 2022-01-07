
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* distpoint; } ;
struct TYPE_5__ {int * fullname; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ name; } ;
typedef int GENERAL_NAMES ;
typedef int GENERAL_NAME ;
typedef TYPE_3__ DIST_POINT ;
typedef int ASN1_STRING ;


 scalar_t__ ASN1_STRING_get0_data (int *) ;
 int ASN1_STRING_length (int *) ;
 int * GENERAL_NAME_get0_value (int *,int*) ;
 int GEN_URI ;
 int sk_GENERAL_NAME_num (int *) ;
 int * sk_GENERAL_NAME_value (int *,int) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static const char *get_dp_url(DIST_POINT *dp)
{
    GENERAL_NAMES *gens;
    GENERAL_NAME *gen;
    int i, gtype;
    ASN1_STRING *uri;
    if (!dp->distpoint || dp->distpoint->type != 0)
        return ((void*)0);
    gens = dp->distpoint->name.fullname;
    for (i = 0; i < sk_GENERAL_NAME_num(gens); i++) {
        gen = sk_GENERAL_NAME_value(gens, i);
        uri = GENERAL_NAME_get0_value(gen, &gtype);
        if (gtype == GEN_URI && ASN1_STRING_length(uri) > 6) {
            const char *uptr = (const char *)ASN1_STRING_get0_data(uri);
            if (strncmp(uptr, "http://", 7) == 0)
                return uptr;
        }
    }
    return ((void*)0);
}
