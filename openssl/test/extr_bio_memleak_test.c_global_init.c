
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_MEM_CHECK_ON ;
 int CRYPTO_mem_ctrl (int ) ;
 int CRYPTO_set_mem_debug (int) ;

int global_init(void)
{
    CRYPTO_set_mem_debug(1);
    CRYPTO_mem_ctrl(CRYPTO_MEM_CHECK_ON);
    return 1;
}
