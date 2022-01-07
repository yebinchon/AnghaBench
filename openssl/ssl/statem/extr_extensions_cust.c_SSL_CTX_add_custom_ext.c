
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_custom_ext_parse_cb_ex ;
typedef int SSL_custom_ext_free_cb_ex ;
typedef int SSL_custom_ext_add_cb_ex ;
typedef int SSL_CTX ;


 int ENDPOINT_BOTH ;
 int add_custom_ext_intern (int *,int ,unsigned int,unsigned int,int ,int ,void*,int ,void*) ;

int SSL_CTX_add_custom_ext(SSL_CTX *ctx, unsigned int ext_type,
                           unsigned int context,
                           SSL_custom_ext_add_cb_ex add_cb,
                           SSL_custom_ext_free_cb_ex free_cb,
                           void *add_arg,
                           SSL_custom_ext_parse_cb_ex parse_cb, void *parse_arg)
{
    return add_custom_ext_intern(ctx, ENDPOINT_BOTH, ext_type, context, add_cb,
                                 free_cb, add_arg, parse_cb, parse_arg);
}
