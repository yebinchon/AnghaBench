
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int method; } ;
typedef int BIO ;
typedef TYPE_1__ ACCESS_DESCRIPTION ;


 int i2a_ASN1_OBJECT (int *,int ) ;

int i2a_ACCESS_DESCRIPTION(BIO *bp, const ACCESS_DESCRIPTION *a)
{
    i2a_ASN1_OBJECT(bp, a->method);
    return 2;
}
