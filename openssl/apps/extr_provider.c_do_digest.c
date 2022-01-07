
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD ;


 int EVP_MD_gettable_ctx_params (int *) ;
 int EVP_MD_gettable_params (int *) ;
 int EVP_MD_settable_ctx_params (int *) ;
 int collect_digest_names ;
 int do_method (int *,int ,int ,int ,int ,void*) ;

__attribute__((used)) static void do_digest(EVP_MD *digest, void *meta)
{
    do_method(digest, collect_digest_names,
              EVP_MD_gettable_params(digest),
              EVP_MD_gettable_ctx_params(digest),
              EVP_MD_settable_ctx_params(digest),
              meta);
}
