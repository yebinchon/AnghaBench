
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int main () ;

void ResetISR(void)
{
    {


        __asm volatile
        (
                "ldr r0, =_text             \n"
                "ldr r0, [r0]               \n"
                "msr msp, r0                \n"
        );
    }

    {



        __asm volatile
        (
                "ldr     r0, =_bss      \n"
                "ldr     r1, =_ebss     \n"
                "mov     r2, #0         \n"
        ".thumb_func                    \n"
        "zero_loop:                     \n"
                "cmp     r0, r1         \n"
                "it      lt             \n"
                "strlt   r2, [r0], #4   \n"
                "blt     zero_loop      \n"
        );
    }

    {



        main();
    }
}
