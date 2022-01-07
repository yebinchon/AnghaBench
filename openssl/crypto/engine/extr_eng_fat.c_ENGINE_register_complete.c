
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int ENGINE_register_DH (int *) ;
 int ENGINE_register_DSA (int *) ;
 int ENGINE_register_EC (int *) ;
 int ENGINE_register_RAND (int *) ;
 int ENGINE_register_RSA (int *) ;
 int ENGINE_register_ciphers (int *) ;
 int ENGINE_register_digests (int *) ;
 int ENGINE_register_pkey_asn1_meths (int *) ;
 int ENGINE_register_pkey_meths (int *) ;

int ENGINE_register_complete(ENGINE *e)
{
    ENGINE_register_ciphers(e);
    ENGINE_register_digests(e);

    ENGINE_register_RSA(e);


    ENGINE_register_DSA(e);


    ENGINE_register_DH(e);


    ENGINE_register_EC(e);

    ENGINE_register_RAND(e);
    ENGINE_register_pkey_meths(e);
    ENGINE_register_pkey_asn1_meths(e);
    return 1;
}
