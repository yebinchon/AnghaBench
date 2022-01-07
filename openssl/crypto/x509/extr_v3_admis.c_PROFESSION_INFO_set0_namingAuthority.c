
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * namingAuthority; } ;
typedef TYPE_1__ PROFESSION_INFO ;
typedef int NAMING_AUTHORITY ;


 int NAMING_AUTHORITY_free (int *) ;

void PROFESSION_INFO_set0_namingAuthority(PROFESSION_INFO *pi,
                                          NAMING_AUTHORITY *na)
{
    NAMING_AUTHORITY_free(pi->namingAuthority);
    pi->namingAuthority = na;
}
