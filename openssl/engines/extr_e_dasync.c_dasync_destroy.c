
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int ERR_unload_DASYNC_strings () ;
 int RSA_meth_free (int ) ;
 int dasync_rsa_method ;
 int destroy_ciphers () ;
 int destroy_digests () ;

__attribute__((used)) static int dasync_destroy(ENGINE *e)
{
    destroy_digests();
    destroy_ciphers();
    RSA_meth_free(dasync_rsa_method);
    ERR_unload_DASYNC_strings();
    return 1;
}
