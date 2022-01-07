
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* data; int length; } ;
typedef TYPE_1__ ASN1_STRING ;



void corrupt_signature(const ASN1_STRING *signature)
{
        unsigned char *s = signature->data;
        s[signature->length - 1] ^= 0x1;
}
