
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAND_DRBG ;
typedef int HOOK_CTX ;


 scalar_t__ RAND_DRBG_get_ex_data (int *,int ) ;
 int app_data_index ;

__attribute__((used)) static HOOK_CTX *get_hook_ctx(RAND_DRBG *drbg)
{
    return (HOOK_CTX *)RAND_DRBG_get_ex_data(drbg, app_data_index);
}
