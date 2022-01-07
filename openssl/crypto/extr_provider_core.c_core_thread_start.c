
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int provctx; } ;
typedef int OSSL_thread_stop_handler_fn ;
typedef TYPE_1__ OSSL_PROVIDER ;


 int ossl_init_thread_start (TYPE_1__ const*,int ,int ) ;

__attribute__((used)) static int core_thread_start(const OSSL_PROVIDER *prov,
                             OSSL_thread_stop_handler_fn handfn)
{
    return ossl_init_thread_start(prov, prov->provctx, handfn);
}
