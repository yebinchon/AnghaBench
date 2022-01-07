
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_GROUP ;
typedef int BIGNUM ;


 scalar_t__ BN_cmp (int *,int ) ;
 int BN_free (int *) ;
 int BN_hex2bn (int **,char*) ;
 int EC_GROUP_free (int *) ;
 int EC_GROUP_get0_field (int *) ;
 int * EC_GROUP_new_by_curve_name (int ) ;
 int NID_secp521r1 ;
 int NID_sect163r2 ;

__attribute__((used)) static int group_field_test(void)
{
    int r = 1;
    BIGNUM *secp521r1_field = ((void*)0);
    BIGNUM *sect163r2_field = ((void*)0);
    EC_GROUP *secp521r1_group = ((void*)0);
    EC_GROUP *sect163r2_group = ((void*)0);

    BN_hex2bn(&secp521r1_field,
                "01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
                "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
                "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
                "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
                "FFFF");


    BN_hex2bn(&sect163r2_field,
                "08000000000000000000000000000000"
                "00000000C9");

    secp521r1_group = EC_GROUP_new_by_curve_name(NID_secp521r1);
    if (BN_cmp(secp521r1_field, EC_GROUP_get0_field(secp521r1_group)))
      r = 0;


    sect163r2_group = EC_GROUP_new_by_curve_name(NID_sect163r2);
    if (BN_cmp(sect163r2_field, EC_GROUP_get0_field(sect163r2_group)))
      r = 0;


    EC_GROUP_free(secp521r1_group);
    EC_GROUP_free(sect163r2_group);
    BN_free(secp521r1_field);
    BN_free(sect163r2_field);
    return r;
}
