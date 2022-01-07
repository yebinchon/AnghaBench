
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DH ;


 int DH_CHECK_P_NOT_PRIME ;
 int DH_F_DH_CHECK_PARAMS_EX ;
 int DH_MODULUS_TOO_LARGE ;
 int DH_MODULUS_TOO_SMALL ;
 int DH_NOT_SUITABLE_GENERATOR ;
 int DH_R_CHECK_P_NOT_PRIME ;
 int DH_R_MODULUS_TOO_LARGE ;
 int DH_R_MODULUS_TOO_SMALL ;
 int DH_R_NOT_SUITABLE_GENERATOR ;
 int DH_check_params (int const*,int*) ;
 int DHerr (int ,int ) ;

int DH_check_params_ex(const DH *dh)
{
    int errflags = 0;

    if (!DH_check_params(dh, &errflags))
        return 0;

    if ((errflags & DH_CHECK_P_NOT_PRIME) != 0)
        DHerr(DH_F_DH_CHECK_PARAMS_EX, DH_R_CHECK_P_NOT_PRIME);
    if ((errflags & DH_NOT_SUITABLE_GENERATOR) != 0)
        DHerr(DH_F_DH_CHECK_PARAMS_EX, DH_R_NOT_SUITABLE_GENERATOR);
    if ((errflags & DH_MODULUS_TOO_SMALL) != 0)
        DHerr(DH_F_DH_CHECK_PARAMS_EX, DH_R_MODULUS_TOO_SMALL);
    if ((errflags & DH_MODULUS_TOO_LARGE) != 0)
        DHerr(DH_F_DH_CHECK_PARAMS_EX, DH_R_MODULUS_TOO_LARGE);

    return errflags == 0;
}
