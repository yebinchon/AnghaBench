
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Subject; } ;
typedef int DWORD ;
typedef int CERT_NAME_CONSTRAINTS_INFO ;
typedef TYPE_1__ CERT_INFO ;
typedef int CERT_EXTENSION ;


 int compare_alt_name_with_constraints (int *,int const*,int *) ;
 int compare_subject_with_constraints (int *,int const*,int *) ;
 int * get_subject_alt_name_ext (TYPE_1__ const*) ;

__attribute__((used)) static void CRYPT_CheckNameConstraints(
 const CERT_NAME_CONSTRAINTS_INFO *nameConstraints, const CERT_INFO *cert,
 DWORD *trustErrorStatus)
{
    CERT_EXTENSION *ext = get_subject_alt_name_ext(cert);

    if (ext)
        compare_alt_name_with_constraints(ext, nameConstraints,
         trustErrorStatus);





    compare_subject_with_constraints(&cert->Subject, nameConstraints,
     trustErrorStatus);
}
