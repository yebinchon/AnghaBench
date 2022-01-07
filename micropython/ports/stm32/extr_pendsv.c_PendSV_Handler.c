
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((naked)) void PendSV_Handler(void) {
    __asm volatile (
        "ldr r1, pendsv_object_ptr\n"
        "ldr r0, [r1]\n"
        "cmp r0, #0\n"
        "beq .no_obj\n"



        "str r0, [sp, #0]\n"

        "mov r0, #0\n"
        "str r0, [r1]\n"
        "ldr r0, nlr_jump_ptr\n"



        "str r0, [sp, #24]\n"

        "bx lr\n"
        ".no_obj:\n"
        "bx lr\n"



        ".align 2\n"



        "pendsv_object_ptr: .word pendsv_object\n"
        "nlr_jump_ptr: .word nlr_jump\n"
    );
}
