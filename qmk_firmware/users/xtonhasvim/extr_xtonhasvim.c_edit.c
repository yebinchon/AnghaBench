
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VIM_START ;
 int layer_clear () ;
 int vstate ;

__attribute__((used)) static void edit(void) { vstate = VIM_START; layer_clear(); }
