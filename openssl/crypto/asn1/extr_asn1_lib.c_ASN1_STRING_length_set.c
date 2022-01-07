
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; } ;
typedef TYPE_1__ ASN1_STRING ;



void ASN1_STRING_length_set(ASN1_STRING *x, int len)
{
    x->length = len;
}
