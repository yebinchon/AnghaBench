
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int ENGINE_set_RAND (int *,int ) ;
 int ENGINE_set_ciphers (int *,int ) ;
 int ENGINE_set_destroy_function (int *,int ) ;
 int ENGINE_set_digests (int *,int ) ;
 int ENGINE_set_finish_function (int *,int ) ;
 int ENGINE_set_id (int *,int ) ;
 int ENGINE_set_init_function (int *,int ) ;
 int ENGINE_set_name (int *,int ) ;
 int ERR_load_OSSLTEST_strings () ;
 int OSSLTEST_F_BIND_OSSLTEST ;
 int OSSLTEST_R_INIT_FAILED ;
 int OSSLTESTerr (int ,int ) ;
 int engine_ossltest_id ;
 int engine_ossltest_name ;
 int ossltest_ciphers ;
 int ossltest_destroy ;
 int ossltest_digests ;
 int ossltest_finish ;
 int ossltest_init ;
 int ossltest_rand_method () ;

__attribute__((used)) static int bind_ossltest(ENGINE *e)
{

    ERR_load_OSSLTEST_strings();

    if (!ENGINE_set_id(e, engine_ossltest_id)
        || !ENGINE_set_name(e, engine_ossltest_name)
        || !ENGINE_set_digests(e, ossltest_digests)
        || !ENGINE_set_ciphers(e, ossltest_ciphers)
        || !ENGINE_set_RAND(e, ossltest_rand_method())
        || !ENGINE_set_destroy_function(e, ossltest_destroy)
        || !ENGINE_set_init_function(e, ossltest_init)
        || !ENGINE_set_finish_function(e, ossltest_finish)) {
        OSSLTESTerr(OSSLTEST_F_BIND_OSSLTEST, OSSLTEST_R_INIT_FAILED);
        return 0;
    }

    return 1;
}
