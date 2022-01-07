
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int master_ctx ;
 int private_ctx ;
 int public_ctx ;
 int reset_hook_ctx (int *) ;

__attribute__((used)) static void reset_drbg_hook_ctx(void)
{
    reset_hook_ctx(&master_ctx);
    reset_hook_ctx(&public_ctx);
    reset_hook_ctx(&private_ctx);
}
