
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PROVIDER ;


 int ERR_new () ;

__attribute__((used)) static void core_new_error(const OSSL_PROVIDER *prov)
{
    ERR_new();
}
