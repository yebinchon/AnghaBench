
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int data; } ;
typedef TYPE_1__ DER_ENC ;


 int memcmp (int ,int ,int) ;

__attribute__((used)) static int der_cmp(const void *a, const void *b)
{
    const DER_ENC *d1 = a, *d2 = b;
    int cmplen, i;
    cmplen = (d1->length < d2->length) ? d1->length : d2->length;
    i = memcmp(d1->data, d2->data, cmplen);
    if (i)
        return i;
    return d1->length - d2->length;
}
