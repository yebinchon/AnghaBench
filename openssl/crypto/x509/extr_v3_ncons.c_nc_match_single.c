
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int iPAddress; int uniformResourceIdentifier; int rfc822Name; int dNSName; int directoryName; } ;
struct TYPE_6__ {int type; TYPE_1__ d; } ;
typedef TYPE_2__ GENERAL_NAME ;







 int X509_V_ERR_UNSUPPORTED_CONSTRAINT_TYPE ;
 int nc_dn (int ,int ) ;
 int nc_dns (int ,int ) ;
 int nc_email (int ,int ) ;
 int nc_ip (int ,int ) ;
 int nc_uri (int ,int ) ;

__attribute__((used)) static int nc_match_single(GENERAL_NAME *gen, GENERAL_NAME *base)
{
    switch (base->type) {
    case 132:
        return nc_dn(gen->d.directoryName, base->d.directoryName);

    case 131:
        return nc_dns(gen->d.dNSName, base->d.dNSName);

    case 130:
        return nc_email(gen->d.rfc822Name, base->d.rfc822Name);

    case 128:
        return nc_uri(gen->d.uniformResourceIdentifier,
                      base->d.uniformResourceIdentifier);

    case 129:
        return nc_ip(gen->d.iPAddress, base->d.iPAddress);

    default:
        return X509_V_ERR_UNSUPPORTED_CONSTRAINT_TYPE;
    }

}
