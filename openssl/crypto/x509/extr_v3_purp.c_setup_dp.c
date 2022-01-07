
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int X509_NAME ;
typedef int X509 ;
struct TYPE_12__ {int type; } ;
struct TYPE_11__ {int dp_reasons; TYPE_7__* distpoint; int CRLissuer; TYPE_1__* reasons; } ;
struct TYPE_9__ {int * directoryName; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_2__ d; } ;
struct TYPE_8__ {int length; int* data; } ;
typedef TYPE_3__ GENERAL_NAME ;
typedef TYPE_4__ DIST_POINT ;


 int CRLDP_ALL_REASONS ;
 int DIST_POINT_set_dpname (TYPE_7__*,int *) ;
 scalar_t__ GEN_DIRNAME ;
 int * X509_get_issuer_name (int *) ;
 int sk_GENERAL_NAME_num (int ) ;
 TYPE_3__* sk_GENERAL_NAME_value (int ,int) ;

__attribute__((used)) static void setup_dp(X509 *x, DIST_POINT *dp)
{
    X509_NAME *iname = ((void*)0);
    int i;
    if (dp->reasons) {
        if (dp->reasons->length > 0)
            dp->dp_reasons = dp->reasons->data[0];
        if (dp->reasons->length > 1)
            dp->dp_reasons |= (dp->reasons->data[1] << 8);
        dp->dp_reasons &= CRLDP_ALL_REASONS;
    } else
        dp->dp_reasons = CRLDP_ALL_REASONS;
    if (!dp->distpoint || (dp->distpoint->type != 1))
        return;
    for (i = 0; i < sk_GENERAL_NAME_num(dp->CRLissuer); i++) {
        GENERAL_NAME *gen = sk_GENERAL_NAME_value(dp->CRLissuer, i);
        if (gen->type == GEN_DIRNAME) {
            iname = gen->d.directoryName;
            break;
        }
    }
    if (!iname)
        iname = X509_get_issuer_name(x);

    DIST_POINT_set_dpname(dp->distpoint, iname);

}
