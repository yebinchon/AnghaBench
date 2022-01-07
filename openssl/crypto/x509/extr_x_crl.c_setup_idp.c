
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int idp_reasons; int idp_flags; } ;
typedef TYPE_2__ X509_CRL ;
struct TYPE_9__ {scalar_t__ onlyuser; scalar_t__ onlyCA; scalar_t__ onlyattr; scalar_t__ indirectCRL; int distpoint; TYPE_1__* onlysomereasons; } ;
struct TYPE_7__ {int length; int* data; } ;
typedef TYPE_3__ ISSUING_DIST_POINT ;


 int CRLDP_ALL_REASONS ;
 int DIST_POINT_set_dpname (int ,int ) ;
 int IDP_INDIRECT ;
 int IDP_INVALID ;
 int IDP_ONLYATTR ;
 int IDP_ONLYCA ;
 int IDP_ONLYUSER ;
 int IDP_PRESENT ;
 int IDP_REASONS ;
 int X509_CRL_get_issuer (TYPE_2__*) ;

__attribute__((used)) static void setup_idp(X509_CRL *crl, ISSUING_DIST_POINT *idp)
{
    int idp_only = 0;

    crl->idp_flags |= IDP_PRESENT;
    if (idp->onlyuser > 0) {
        idp_only++;
        crl->idp_flags |= IDP_ONLYUSER;
    }
    if (idp->onlyCA > 0) {
        idp_only++;
        crl->idp_flags |= IDP_ONLYCA;
    }
    if (idp->onlyattr > 0) {
        idp_only++;
        crl->idp_flags |= IDP_ONLYATTR;
    }

    if (idp_only > 1)
        crl->idp_flags |= IDP_INVALID;

    if (idp->indirectCRL > 0)
        crl->idp_flags |= IDP_INDIRECT;

    if (idp->onlysomereasons) {
        crl->idp_flags |= IDP_REASONS;
        if (idp->onlysomereasons->length > 0)
            crl->idp_reasons = idp->onlysomereasons->data[0];
        if (idp->onlysomereasons->length > 1)
            crl->idp_reasons |= (idp->onlysomereasons->data[1] << 8);
        crl->idp_reasons &= CRLDP_ALL_REASONS;
    }

    DIST_POINT_set_dpname(idp->distpoint, X509_CRL_get_issuer(crl));
}
