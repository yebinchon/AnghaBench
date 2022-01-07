
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void vPortSVCHandler( void )
{
 __asm volatile (
     "	ldr	r3, pxCurrentTCBConst2		\n"
     "	ldr r1, [r3]					\n"
     "	ldr r0, [r1]					\n"
     "	ldmia r0!, {r4-r11}				\n"
     "	msr psp, r0						\n"
     "	isb								\n"
     "	mov r0, #0 						\n"
     "	msr	basepri, r0					\n"
     "	orr r14, #0xd					\n"
     "	bx r14							\n"
     "									\n"
     "	.align 4						\n"
     "pxCurrentTCBConst2: .word pxCurrentTCB				\n"
    );
}
