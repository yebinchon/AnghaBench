
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void prvPortStartFirstTask( void )
{
 __asm volatile(
     " ldr r0, =0xE000ED08 	\n"
     " ldr r0, [r0] 			\n"
     " ldr r0, [r0] 			\n"
     " msr msp, r0			\n"
     " cpsie i				\n"
     " cpsie f				\n"
     " dsb					\n"
     " isb					\n"
     " svc 0					\n"
     " nop					\n"
    );
}
