
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * addProfessionInfo; } ;
typedef TYPE_1__ PROFESSION_INFO ;
typedef int ASN1_OCTET_STRING ;


 int ASN1_OCTET_STRING_free (int *) ;

void PROFESSION_INFO_set0_addProfessionInfo(PROFESSION_INFO *pi,
                                            ASN1_OCTET_STRING *aos)
{
    ASN1_OCTET_STRING_free(pi->addProfessionInfo);
    pi->addProfessionInfo = aos;
}
