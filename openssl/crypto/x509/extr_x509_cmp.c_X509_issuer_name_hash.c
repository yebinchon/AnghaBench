
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int issuer; } ;
struct TYPE_5__ {TYPE_1__ cert_info; } ;
typedef TYPE_2__ X509 ;


 unsigned long X509_NAME_hash (int ) ;

unsigned long X509_issuer_name_hash(X509 *x)
{
    return X509_NAME_hash(x->cert_info.issuer);
}
