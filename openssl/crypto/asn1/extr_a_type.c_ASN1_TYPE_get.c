
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ptr; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ value; } ;
typedef TYPE_2__ ASN1_TYPE ;


 scalar_t__ V_ASN1_BOOLEAN ;
 scalar_t__ V_ASN1_NULL ;

int ASN1_TYPE_get(const ASN1_TYPE *a)
{
    if (a->type == V_ASN1_BOOLEAN
            || a->type == V_ASN1_NULL
            || a->value.ptr != ((void*)0))
        return a->type;
    else
        return 0;
}
