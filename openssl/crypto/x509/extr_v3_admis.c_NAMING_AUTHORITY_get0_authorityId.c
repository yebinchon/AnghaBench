
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* namingAuthorityId; } ;
typedef TYPE_1__ NAMING_AUTHORITY ;
typedef int ASN1_OBJECT ;



const ASN1_OBJECT *NAMING_AUTHORITY_get0_authorityId(const NAMING_AUTHORITY *n)
{
    return n->namingAuthorityId;
}
