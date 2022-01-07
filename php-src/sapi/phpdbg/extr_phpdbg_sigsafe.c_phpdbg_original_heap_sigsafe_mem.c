
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zend_mm_heap ;
struct TYPE_2__ {int * old_heap; } ;


 TYPE_1__ PHPDBG_G (int ) ;
 int sigsafe_mem ;

zend_mm_heap *phpdbg_original_heap_sigsafe_mem(void) {
 return PHPDBG_G(sigsafe_mem).old_heap;
}
