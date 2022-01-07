
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void call_user_start(void) {
 __asm volatile (
  "mov a15, a0\n"
  "call0 find_image\n"
  "mov a0, a15\n"
  "bnez a2, 1f\n"
  "ret\n"
  "1:\n"
  "movi a3, entry_addr\n"
  "l32i a3, a3, 0\n"
  "jx a3\n"
 );
}
