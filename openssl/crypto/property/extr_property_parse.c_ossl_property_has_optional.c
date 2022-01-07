
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ has_optional; } ;
typedef TYPE_1__ OSSL_PROPERTY_LIST ;



int ossl_property_has_optional(const OSSL_PROPERTY_LIST *query)
{
    return query->has_optional ? 1 : 0;
}
