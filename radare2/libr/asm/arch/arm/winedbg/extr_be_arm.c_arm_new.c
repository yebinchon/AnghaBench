
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winedbg_arm_insn {int thumb; int * str_asm; int * str_hex; scalar_t__ pc; } ;


 struct winedbg_arm_insn* malloc (int) ;

struct winedbg_arm_insn* arm_new() {
 struct winedbg_arm_insn *ret;
 ret = malloc(sizeof(struct winedbg_arm_insn));
 ret->pc = 0;
 ret->thumb = 0;
 ret->str_hex = ((void*)0);
 ret->str_asm = ((void*)0);
 return ret;
}
