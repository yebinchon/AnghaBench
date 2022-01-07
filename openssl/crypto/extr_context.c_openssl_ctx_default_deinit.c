
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int context_deinit (int ) ;
 int default_context ;

void openssl_ctx_default_deinit(void)
{
    context_deinit(default_context);
}
