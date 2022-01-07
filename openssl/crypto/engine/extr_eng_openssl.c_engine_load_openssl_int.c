
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int ENGINE_add (int *) ;
 int ENGINE_free (int *) ;
 int ERR_clear_error () ;
 int * engine_openssl () ;

void engine_load_openssl_int(void)
{
    ENGINE *toadd = engine_openssl();
    if (!toadd)
        return;
    ENGINE_add(toadd);




    ENGINE_free(toadd);
    ERR_clear_error();
}
