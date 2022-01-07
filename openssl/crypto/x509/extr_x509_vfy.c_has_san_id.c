
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_3__ {int type; } ;
typedef int GENERAL_NAMES ;
typedef TYPE_1__ GENERAL_NAME ;


 int GENERAL_NAMES_free (int *) ;
 int NID_subject_alt_name ;
 int * X509_get_ext_d2i (int *,int ,int *,int *) ;
 int sk_GENERAL_NAME_num (int *) ;
 TYPE_1__* sk_GENERAL_NAME_value (int *,int) ;

__attribute__((used)) static int has_san_id(X509 *x, int gtype)
{
    int i;
    int ret = 0;
    GENERAL_NAMES *gs = X509_get_ext_d2i(x, NID_subject_alt_name, ((void*)0), ((void*)0));

    if (gs == ((void*)0))
        return 0;

    for (i = 0; i < sk_GENERAL_NAME_num(gs); i++) {
        GENERAL_NAME *g = sk_GENERAL_NAME_value(gs, i);

        if (g->type == gtype) {
            ret = 1;
            break;
        }
    }
    GENERAL_NAMES_free(gs);
    return ret;
}
