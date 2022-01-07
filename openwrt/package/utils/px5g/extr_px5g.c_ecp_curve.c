
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mbedtls_ecp_group_id ;
struct TYPE_3__ {int grp_id; } ;
typedef TYPE_1__ mbedtls_ecp_curve_info ;


 int MBEDTLS_ECP_DP_NONE ;
 int MBEDTLS_ECP_DP_SECP256R1 ;
 int MBEDTLS_ECP_DP_SECP384R1 ;
 int MBEDTLS_ECP_DP_SECP521R1 ;
 TYPE_1__* mbedtls_ecp_curve_info_from_name (char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static mbedtls_ecp_group_id ecp_curve(const char *name)
{
 const mbedtls_ecp_curve_info *curve_info;

 if (!strcmp(name, "P-256"))
  return MBEDTLS_ECP_DP_SECP256R1;
 else if (!strcmp(name, "P-384"))
  return MBEDTLS_ECP_DP_SECP384R1;
 else if (!strcmp(name, "P-521"))
  return MBEDTLS_ECP_DP_SECP521R1;
 curve_info = mbedtls_ecp_curve_info_from_name(name);
 if (curve_info == ((void*)0))
  return MBEDTLS_ECP_DP_NONE;
 else
  return curve_info->grp_id;
}
