
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int issuer; int serialNumber; } ;
typedef TYPE_1__ X509_CINF ;
struct TYPE_6__ {TYPE_1__ cert_info; } ;
typedef TYPE_2__ X509 ;


 int ASN1_INTEGER_cmp (int *,int *) ;
 int X509_NAME_cmp (int ,int ) ;

int X509_issuer_and_serial_cmp(const X509 *a, const X509 *b)
{
    int i;
    const X509_CINF *ai, *bi;

    ai = &a->cert_info;
    bi = &b->cert_info;
    i = ASN1_INTEGER_cmp(&ai->serialNumber, &bi->serialNumber);
    if (i)
        return i;
    return X509_NAME_cmp(ai->issuer, bi->issuer);
}
