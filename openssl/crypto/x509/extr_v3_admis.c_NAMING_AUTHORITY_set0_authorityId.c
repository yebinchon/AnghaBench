
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * namingAuthorityId; } ;
typedef TYPE_1__ NAMING_AUTHORITY ;
typedef int ASN1_OBJECT ;


 int ASN1_OBJECT_free (int *) ;

void NAMING_AUTHORITY_set0_authorityId(NAMING_AUTHORITY *n, ASN1_OBJECT* id)
{
    ASN1_OBJECT_free(n->namingAuthorityId);
    n->namingAuthorityId = id;
}
