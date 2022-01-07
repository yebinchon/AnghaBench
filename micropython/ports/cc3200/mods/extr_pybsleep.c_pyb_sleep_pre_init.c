
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvic_reg_store_t ;


 int ASSERT (int ) ;
 int * mem_Malloc (int) ;
 int * nvic_reg_store ;

__attribute__ ((section (".boot")))
void pyb_sleep_pre_init (void) {

    ASSERT ((nvic_reg_store = mem_Malloc(sizeof(nvic_reg_store_t))) != ((void*)0));
}
